import 'dart:typed_data';

import 'package:friends_badge/src/ndef/ndef.dart';
import 'package:friends_badge/src/ndef/ndef_badge_writer.dart'
    show IsoDepTransceiver;

/// NFC Forum Type 4 Tag Application DF name.
const List<int> _kNdefTagApplicationDfName = [
  0xD2, 0x76, 0x00, 0x00, 0x85, 0x01, 0x01,
];

/// File ID of the Capability Container on a Type 4 tag.
const int _kCapabilityContainerFileId = 0xE103;

/// Maximum payload a single READ BINARY APDU can carry.
const int _kMaxReadBinaryChunkSize = 255;

/// Reads [NdefMessage]s from an NFC Forum Type 4 tag.
///
/// The read sequence mirrors `NdefBadgeWriter`:
///
/// 1. SELECT the NDEF Tag Application by DF name.
/// 2. SELECT the Capability Container file.
/// 3. READ BINARY the Capability Container to discover the NDEF file ID.
/// 4. SELECT the NDEF file.
/// 5. READ BINARY the 2-byte NLEN, then READ BINARY the NDEF message bytes.
///
/// Throws [StateError] if any APDU response has a status word other than
/// `90 00`, or if the Capability Container layout is not recognised.
/// Throws [FormatException] if the bytes read from the tag do not parse as a
/// valid NDEF message.
class NdefBadgeReader {
  const NdefBadgeReader();

  /// Reads and parses an [NdefMessage] from the badge over [transceiver].
  Future<NdefMessage> read(IsoDepTransceiver transceiver) async {
    // 1. SELECT NDEF Tag Application.
    await _select(
      transceiver,
      p1: 0x04,
      p2: 0x00,
      data: _kNdefTagApplicationDfName,
    );

    // 2. SELECT Capability Container.
    await _selectFile(transceiver, _kCapabilityContainerFileId);

    // 3. READ BINARY the CC to discover the NDEF file ID. See
    //    [NdefBadgeWriter] for the CC layout.
    final cc = await _readBinary(transceiver, offset: 0, length: 15);
    if (cc.length < 15 || cc[7] != 0x04) {
      throw StateError(
        'Unexpected Capability Container layout: '
        '${cc.map((b) => b.toRadixString(16).padLeft(2, '0')).join(' ')}',
      );
    }
    final ndefFileId = (cc[9] << 8) | cc[10];
    final maxNdefFileSize = (cc[11] << 8) | cc[12];

    // 4. SELECT NDEF file.
    await _selectFile(transceiver, ndefFileId);

    // 5a. READ BINARY the 2-byte NLEN at offset 0.
    final nlenBytes = await _readBinary(transceiver, offset: 0, length: 2);
    if (nlenBytes.length < 2) {
      throw const FormatException(
        'NLEN read returned fewer than 2 bytes',
      );
    }
    final nlen = (nlenBytes[0] << 8) | nlenBytes[1];
    if (nlen == 0) {
      // Type 4 convention: NLEN=0 means the file is empty / not yet written.
      throw const FormatException(
        'NDEF file is empty (NLEN=0) — no message has been written',
      );
    }
    if (nlen > maxNdefFileSize - 2) {
      throw FormatException(
        'NLEN ($nlen) exceeds the NDEF file capacity '
        '(${maxNdefFileSize - 2} bytes) reported by the Capability Container',
      );
    }

    // 5b. READ BINARY the NDEF message at offset 2, in 255-byte chunks.
    final messageBytes = Uint8List(nlen);
    var read = 0;
    while (read < nlen) {
      final remaining = nlen - read;
      final chunkLength = remaining > _kMaxReadBinaryChunkSize
          ? _kMaxReadBinaryChunkSize
          : remaining;
      final chunk = await _readBinary(
        transceiver,
        offset: 2 + read,
        length: chunkLength,
      );
      if (chunk.isEmpty) {
        throw FormatException(
          'READ BINARY returned 0 bytes at offset ${2 + read} '
          '(expected $chunkLength)',
        );
      }
      messageBytes.setRange(read, read + chunk.length, chunk);
      read += chunk.length;
    }

    return NdefMessage.parse(messageBytes);
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
