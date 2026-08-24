import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:friends_badge/src/ndef/ndef.dart';
import 'package:friends_badge/src/ndef/ndef_badge_writer.dart';

/// Fake [IsoDepTransceiver] that records every C-APDU it receives and
/// replays scripted R-APDUs from [responses].
class FakeTransceiver implements IsoDepTransceiver {
  final List<Uint8List> sent = [];
  final List<Uint8List> responses;
  int _responseIndex = 0;

  FakeTransceiver(this.responses);

  @override
  Future<Uint8List> transceive(Uint8List commandApdu) async {
    sent.add(Uint8List.fromList(commandApdu));
    if (_responseIndex >= responses.length) {
      throw StateError(
        'FakeTransceiver: no scripted response for APDU #$sent.length',
      );
    }
    return responses[_responseIndex++];
  }
}

/// Builds a minimal valid Capability Container R-APDU:
/// CCLEN=15, version=0x20, MLe=256, MLc=256, TLV(tag=04,len=06,
/// fileId=E104, maxSize=1024, readOpen, writeOpen), SW=90 00.
Uint8List _ccSuccess({int ndefFileId = 0xE104, int maxNdefSize = 1024}) {
  return Uint8List.fromList([
    0x00, 0x0F, // CCLEN
    0x20, // mapping version 2.0
    0x01, 0x00, // MLe
    0x01, 0x00, // MLc
    0x04, 0x06, // NDEF File Control TLV tag + length
    (ndefFileId >> 8) & 0xFF, ndefFileId & 0xFF,
    (maxNdefSize >> 8) & 0xFF, maxNdefSize & 0xFF,
    0x00, // read access = open
    0x00, // write access = open
    0x90, 0x00, // SW1-SW2 = success
  ]);
}

/// Builds a simple success R-APDU (SW1-SW2 = 90 00, no data).
Uint8List _ok() => Uint8List.fromList([0x90, 0x00]);

/// Builds a failure R-APDU with the given status word.
Uint8List _fail(int sw1, int sw2) => Uint8List.fromList([sw1, sw2]);

void main() {
  group('NdefBadgeWriter', () {
    test('issues the expected APDU sequence for a small message', () async {
      final message = NdefMessage([
        NdefRecord.uri(Uri.parse('https://example.com')),
        NdefRecord.text('Alice · Dev · example.com'),
      ]);
      final serialized = message.serialize();

      final transceiver = FakeTransceiver([
        _ok(), // SELECT NDEF app
        _ok(), // SELECT CC
        _ccSuccess(), // READ BINARY CC
        _ok(), // SELECT NDEF file
        _ok(), // UPDATE BINARY (NLEN)
        _ok(), // UPDATE BINARY (message)
      ]);

      await const NdefBadgeWriter().write(transceiver, message);

      expect(transceiver.sent, hasLength(6));

      // 1. SELECT NDEF Tag Application
      expect(
        transceiver.sent[0],
        equals(
          Uint8List.fromList([
            0x00, 0xA4, 0x04, 0x00, 0x07,
            0xD2, 0x76, 0x00, 0x00, 0x85, 0x01, 0x01,
          ]),
        ),
      );

      // 2. SELECT Capability Container (E103)
      expect(
        transceiver.sent[1],
        equals(Uint8List.fromList([0x00, 0xA4, 0x00, 0x00, 0x02, 0xE1, 0x03])),
      );

      // 3. READ BINARY CC at offset 0, length 15
      expect(
        transceiver.sent[2],
        equals(Uint8List.fromList([0x00, 0xB0, 0x00, 0x00, 0x0F])),
      );

      // 4. SELECT NDEF file (E104, from CC)
      expect(
        transceiver.sent[3],
        equals(Uint8List.fromList([0x00, 0xA4, 0x00, 0x00, 0x02, 0xE1, 0x04])),
      );

      // 5. UPDATE BINARY at offset 0 with 2-byte NLEN
      final nlen = serialized.length;
      expect(
        transceiver.sent[4],
        equals(
          Uint8List.fromList([
            0x00, 0xD6, 0x00, 0x00, 0x02,
            (nlen >> 8) & 0xFF, nlen & 0xFF,
          ]),
        ),
      );

      // 6. UPDATE BINARY at offset 2 with the serialized message
      expect(
        transceiver.sent[5],
        equals(
          Uint8List.fromList([
            0x00, 0xD6, 0x00, 0x02, serialized.length,
            ...serialized,
          ]),
        ),
      );
    });

    test('splits UPDATE BINARY when the payload exceeds 255 bytes', () async {
      final longText = 'x' * 400;
      final message = NdefMessage([NdefRecord.text(longText)]);
      final serialized = message.serialize();
      expect(serialized.length, greaterThan(255));

      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(maxNdefSize: 4096),
        _ok(),
        _ok(), // NLEN update
        _ok(), // chunk 1 of 2
        _ok(), // chunk 2 of 2
      ]);

      await const NdefBadgeWriter().write(transceiver, message);

      // APDUs: SELECT app, SELECT CC, READ CC, SELECT NDEF, UPDATE NLEN,
      // UPDATE chunk1 (255 bytes), UPDATE chunk2 (rest)
      expect(transceiver.sent, hasLength(7));

      final chunk1Length = transceiver.sent[5][4];
      final chunk2Length = transceiver.sent[6][4];
      expect(chunk1Length, equals(255));
      expect(chunk2Length, equals(serialized.length - 255));

      // Second chunk's offset in the NDEF file = 2 (NLEN) + 255
      expect(transceiver.sent[6][2], equals(0x01)); // P1 (offset MSB)
      expect(transceiver.sent[6][3], equals(0x01)); // P2 (offset LSB) = 257
    });

    test('uses the NDEF file ID discovered in the Capability Container',
        () async {
      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(ndefFileId: 0xBEEF), // non-default file ID
        _ok(),
        _ok(),
        _ok(),
      ]);

      await const NdefBadgeWriter().write(
        transceiver,
        NdefMessage([NdefRecord.text('hi')]),
      );

      // APDU #4 must SELECT 0xBEEF, not the default 0xE104
      expect(
        transceiver.sent[3],
        equals(Uint8List.fromList([0x00, 0xA4, 0x00, 0x00, 0x02, 0xBE, 0xEF])),
      );
    });

    test('throws when SELECT NDEF app fails', () async {
      final transceiver = FakeTransceiver([
        _fail(0x6A, 0x82), // file not found
      ]);

      expect(
        () => const NdefBadgeWriter().write(
          transceiver,
          NdefMessage([NdefRecord.text('hi')]),
        ),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('6a 82'),
          ),
        ),
      );
    });

    test('throws when the Capability Container layout is unrecognised',
        () async {
      final badCc = Uint8List.fromList([
        ...List.filled(15, 0xAA),
        0x90, 0x00,
      ]);
      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        badCc,
      ]);

      expect(
        () => const NdefBadgeWriter().write(
          transceiver,
          NdefMessage([NdefRecord.text('hi')]),
        ),
        throwsStateError,
      );
    });

    test('throws when the message does not fit the CC-declared capacity',
        () async {
      final longText = 'x' * 2000;
      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(maxNdefSize: 128), // smaller than the message
      ]);

      expect(
        () => const NdefBadgeWriter().write(
          transceiver,
          NdefMessage([NdefRecord.text(longText)]),
        ),
        throwsArgumentError,
      );
    });

    test('throws when UPDATE BINARY fails', () async {
      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(),
        _ok(),
        _fail(0x69, 0x82), // security status not satisfied
      ]);

      expect(
        () => const NdefBadgeWriter().write(
          transceiver,
          NdefMessage([NdefRecord.text('hi')]),
        ),
        throwsStateError,
      );
    });
  });
}
