import 'dart:typed_data';

import 'package:friends_badge/src/ndef/ndef.dart';

/// Transport abstraction for ISO-DEP APDUs used by [NdefBadgeWriter].
///
/// Distinct from the existing `NfcWriter` (used by the image-chunk
/// protocol), which on iOS strips the status word from the response. NDEF
/// Type 4 writes **must** inspect SW1-SW2 to detect errors, so this
/// abstraction returns the full R-APDU (data + SW1 + SW2) on both platforms.
abstract class IsoDepTransceiver {
  /// Sends a single C-APDU and returns the full R-APDU, including the
  /// trailing SW1-SW2 status word.
  Future<Uint8List> transceive(Uint8List commandApdu);
}

/// NFC Forum Type 4 Tag Application DF name.
const List<int> _kNdefTagApplicationDfName = [
  0xD2,
  0x76,
  0x00,
  0x00,
  0x85,
  0x01,
  0x01,
];

/// File ID of the Capability Container on a Type 4 tag.
const int _kCapabilityContainerFileId = 0xE103;

/// Default file ID of the NDEF data file on a Type 4 tag.
///
/// This is the value defined by the NFC Forum Type 4 Tag specification as the
/// standard NDEF file. The Capability Container is authoritative — if it
/// reports a different file ID, [NdefBadgeWriter] uses the CC's value.
const int kDefaultNdefFileId = 0xE104;

/// Maximum payload a single UPDATE BINARY APDU can carry (1-byte Lc).
const int _kMaxUpdateBinaryChunkSize = 255;

/// Writes [NdefMessage]s to an NFC Forum Type 4 tag.
///
/// The write sequence follows the NFC Forum Type 4 Tag Operation
/// specification:
///
/// 1. SELECT the NDEF Tag Application by DF name.
/// 2. SELECT the Capability Container file.
/// 3. READ BINARY the Capability Container to discover the NDEF file ID.
/// 4. SELECT the NDEF file.
/// 5. UPDATE BINARY with the 2-byte big-endian NLEN followed by the
///    serialized NDEF message.
///
/// All commands are sent over the same ISO-DEP transport used for the
/// existing image-chunk protocol (0xD0/0xD1). NDEF write is purely
/// additive — it does not interfere with the image protocol.
class const NdefBadgeWriter() {
  /// Writes [message] to the badge over [transceiver].
  ///
  /// Throws [StateError] if any APDU response has a status word other than
  /// `90 00`, or if the Capability Container layout is not recognised.
  Future<void> write(
    IsoDepTransceiver transceiver,
    NdefMessage message,
  ) async {
    final serialized = message.serialize();
    if (serialized.length > 0x7FFF) {
      throw ArgumentError.value(
        serialized.length,
        'message.serialize().length',
        'NDEF message exceeds the 32 KiB maximum for a Type 4 NDEF file.',
      );
    }

    // 1. SELECT NDEF Tag Application.
    await _select(
      transceiver,
      p1: 0x04,
      p2: 0x00,
      data: _kNdefTagApplicationDfName,
    );

    // 2. SELECT Capability Container.
    await _selectFile(transceiver, _kCapabilityContainerFileId);

    // 3. READ BINARY the CC to discover the NDEF file ID.
    //    CC layout (Type 4 spec v2.0):
    //      [0..1]  CCLEN
    //      [2]     Mapping version
    //    [3..4]  MLe (max R-APDU data size)
    //    [5..6]  MLc (max C-APDU data size)
    //    [7]     NDEF File Control TLV tag (0x04)
    //    [8]     TLV length (0x06)
    //    [9..10] NDEF file ID
    //    [11..12] Max NDEF file size
    //    [13]    Read access condition (0x00 = open)
    //    [14]    Write access condition (0x00 = open)
    final cc = await _readBinary(transceiver, offset: 0, length: 15);
    if (cc.length < 15 || cc[7] != 0x04) {
      throw StateError(
        'Unexpected Capability Container layout: '
        '${cc.map((b) => b.toRadixString(16).padLeft(2, '0')).join(' ')}',
      );
    }
    final ndefFileId = (cc[9] << 8) | cc[10];
    final maxNdefFileSize = (cc[11] << 8) | cc[12];
    if (2 + serialized.length > maxNdefFileSize) {
      throw ArgumentError.value(
        serialized.length,
        'message.serialize().length',
        'NDEF message (${serialized.length} bytes) plus 2-byte NLEN exceeds '
            'the NDEF file capacity ($maxNdefFileSize bytes) reported by '
            'the Capability Container.',
      );
    }

    // 4. SELECT NDEF file.
    await _selectFile(transceiver, ndefFileId);

    // 5. UPDATE BINARY: 2-byte NLEN + serialized NDEF message.
    //    The Type 4 spec requires writing the NLEN first, then the message —
    //    so a partial write leaves the file in a recognisable "incomplete"
    //    state (NLEN=0 or NLEN larger than the actual data).
    final nlen = ByteData(2)..setUint16(0, serialized.length);
    await _updateBinary(
      transceiver,
      offset: 0,
      data: nlen.buffer.asUint8List(),
    );
    await _updateBinary(transceiver, offset: 2, data: serialized);
  }

  Future<void> _select(
    IsoDepTransceiver transceiver, {
    required int p1,
    required int p2,
    required List<int> data,
  }) async {
    final command = Uint8List.fromList([
      0x00, // CLA
      0xA4, // INS = SELECT
      p1,
      p2,
      data.length,
      ...data,
    ]);
    _expectSuccess(await transceiver.transceive(command));
  }

  Future<void> _selectFile(IsoDepTransceiver transceiver, int fileId) async {
    return _select(
      transceiver,
      p1: 0x00, // Select by file ID
      p2: 0x00,
      data: [(fileId >> 8) & 0xFF, fileId & 0xFF],
    );
  }

  Future<Uint8List> _readBinary(
    IsoDepTransceiver transceiver, {
    required int offset,
    required int length,
  }) async {
    final command = Uint8List.fromList([
      0x00, // CLA
      0xB0, // INS = READ BINARY
      (offset >> 8) & 0xFF,
      offset & 0xFF,
      length,
    ]);
    final rapdu = await transceiver.transceive(command);
    _expectSuccess(rapdu);
    return rapdu.sublist(0, rapdu.length - 2);
  }

  Future<void> _updateBinary(
    IsoDepTransceiver transceiver, {
    required int offset,
    required List<int> data,
  }) async {
    var sent = 0;
    while (sent < data.length) {
      final end = (sent + _kMaxUpdateBinaryChunkSize > data.length)
          ? data.length
          : sent + _kMaxUpdateBinaryChunkSize;
      final chunk = data.sublist(sent, end);
      final command = Uint8List.fromList([
        0x00, // CLA
        0xD6, // INS = UPDATE BINARY
        ((offset + sent) >> 8) & 0xFF,
        (offset + sent) & 0xFF,
        chunk.length,
        ...chunk,
      ]);
      _expectSuccess(await transceiver.transceive(command));
      sent = end;
    }
  }

  void _expectSuccess(Uint8List rapdu) {
    if (rapdu.length < 2) {
      throw StateError(
        'R-APDU too short to contain a status word: '
        '${rapdu.map((b) => b.toRadixString(16).padLeft(2, '0')).join(' ')}',
      );
    }
    final sw1 = rapdu[rapdu.length - 2];
    final sw2 = rapdu[rapdu.length - 1];
    if (sw1 != 0x90 || sw2 != 0x00) {
      throw StateError(
        'APDU failed with status word '
        '${sw1.toRadixString(16).padLeft(2, '0')} '
        '${sw2.toRadixString(16).padLeft(2, '0')}',
      );
    }
  }
}
