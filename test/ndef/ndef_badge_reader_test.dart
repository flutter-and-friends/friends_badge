import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:friends_badge/friends_badge.dart';

/// Scripted [IsoDepTransceiver] that records C-APDUs and replays R-APDUs.
class FakeTransceiver(final List<Uint8List> responses)
    implements IsoDepTransceiver {
  final List<Uint8List> sent = [];
  int _responseIndex = 0;

  @override
  Future<Uint8List> transceive(Uint8List commandApdu) async {
    sent.add(Uint8List.fromList(commandApdu));
    if (_responseIndex >= responses.length) {
      throw StateError(
        'FakeTransceiver: no scripted response for APDU #${sent.length}',
      );
    }
    return responses[_responseIndex++];
  }
}

/// Builds a valid 15-byte Capability Container R-APDU.
Uint8List _ccSuccess({int ndefFileId = 0xE104, int maxNdefSize = 1024}) {
  return Uint8List.fromList([
    0x00,
    0x0F,
    0x20,
    0x01,
    0x00,
    0x01,
    0x00,
    0x04,
    0x06,
    (ndefFileId >> 8) & 0xFF,
    ndefFileId & 0xFF,
    (maxNdefSize >> 8) & 0xFF,
    maxNdefSize & 0xFF,
    0x00,
    0x00,
    0x90,
    0x00,
  ]);
}

Uint8List _ok() => Uint8List.fromList([0x90, 0x00]);
Uint8List _fail(int sw1, int sw2) => Uint8List.fromList([sw1, sw2]);

/// Wraps [data] as a successful R-APDU (data + 90 00).
Uint8List _dataOk(List<int> data) => Uint8List.fromList([...data, 0x90, 0x00]);

void main() {
  group('NdefBadgeReader', () {
    test('reads a small message in a single READ BINARY', () async {
      final message = NdefMessage([
        NdefRecord.uri(Uri.parse('https://example.com')),
        NdefRecord.text('Alice · Dev · example.com'),
      ]);
      final serialized = message.serialize();
      final nlen = serialized.length;

      final transceiver = FakeTransceiver([
        _ok(), // SELECT NDEF app
        _ok(), // SELECT CC
        _ccSuccess(), // READ CC
        _ok(), // SELECT NDEF file
        _dataOk([(nlen >> 8) & 0xFF, nlen & 0xFF]), // READ NLEN
        _dataOk(serialized), // READ message
      ]);

      final read = await const NdefBadgeReader().read(transceiver);

      expect(read.records, hasLength(2));
      expect(
        read.records[0].decodeUri(),
        equals(Uri.parse('https://example.com')),
      );
      expect(
        read.records[1].decodeText().text,
        equals('Alice · Dev · example.com'),
      );

      // Verify the APDU sequence shape.
      expect(transceiver.sent, hasLength(6));
      expect(
        transceiver.sent[0],
        equals(
          Uint8List.fromList([
            0x00,
            0xA4,
            0x04,
            0x00,
            0x07,
            0xD2,
            0x76,
            0x00,
            0x00,
            0x85,
            0x01,
            0x01,
          ]),
        ),
      );
      expect(
        transceiver.sent[1],
        equals(
          Uint8List.fromList([0x00, 0xA4, 0x00, 0x00, 0x02, 0xE1, 0x03]),
        ),
      );
      expect(
        transceiver.sent[2],
        equals(Uint8List.fromList([0x00, 0xB0, 0x00, 0x00, 0x0F])),
      );
      expect(
        transceiver.sent[3],
        equals(
          Uint8List.fromList([0x00, 0xA4, 0x00, 0x00, 0x02, 0xE1, 0x04]),
        ),
      );
      expect(
        transceiver.sent[4],
        equals(Uint8List.fromList([0x00, 0xB0, 0x00, 0x00, 0x02])),
      );
      expect(
        transceiver.sent[5],
        equals(
          Uint8List.fromList([0x00, 0xB0, 0x00, 0x02, serialized.length]),
        ),
      );
    });

    test('chunks the message READ BINARY when it exceeds 255 bytes', () async {
      final longText = 'x' * 400;
      final message = NdefMessage([NdefRecord.text(longText)]);
      final serialized = message.serialize();
      final nlen = serialized.length;
      expect(nlen, greaterThan(255));

      final chunk1 = serialized.sublist(0, 255);
      final chunk2 = serialized.sublist(255);

      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(maxNdefSize: 4096),
        _ok(),
        _dataOk([(nlen >> 8) & 0xFF, nlen & 0xFF]),
        _dataOk(chunk1),
        _dataOk(chunk2),
      ]);

      final read = await const NdefBadgeReader().read(transceiver);

      expect(read.records, hasLength(1));
      expect(read.records[0].decodeText().text, equals(longText));

      // 7 APDUs: SELECT app, SELECT CC, READ CC, SELECT NDEF, READ NLEN,
      // READ chunk 1, READ chunk 2.
      expect(transceiver.sent, hasLength(7));
      // Chunk 1 at offset 2, length 255
      expect(
        transceiver.sent[5],
        equals(Uint8List.fromList([0x00, 0xB0, 0x00, 0x02, 0xFF])),
      );
      // Chunk 2 at offset 2+255=257, length nlen-255
      expect(
        transceiver.sent[6],
        equals(
          Uint8List.fromList([
            0x00,
            0xB0,
            0x01,
            0x01,
            nlen - 255,
          ]),
        ),
      );
    });

    test(
      'uses the NDEF file ID discovered in the Capability Container',
      () async {
        final message = NdefMessage([NdefRecord.text('hi')]);
        final serialized = message.serialize();

        final transceiver = FakeTransceiver([
          _ok(),
          _ok(),
          _ccSuccess(ndefFileId: 0xBEEF),
          _ok(),
          _dataOk([0x00, serialized.length]),
          _dataOk(serialized),
        ]);

        await const NdefBadgeReader().read(transceiver);

        expect(
          transceiver.sent[3],
          equals(
            Uint8List.fromList([0x00, 0xA4, 0x00, 0x00, 0x02, 0xBE, 0xEF]),
          ),
        );
      },
    );

    test('throws on an empty NDEF file (NLEN=0)', () async {
      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(),
        _ok(),
        _dataOk([0x00, 0x00]),
      ]);

      expect(
        () => const NdefBadgeReader().read(transceiver),
        throwsFormatException,
      );
    });

    test('throws when NLEN exceeds the CC-declared capacity', () async {
      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(maxNdefSize: 128),
        _ok(),
        _dataOk([0x04, 0x00]), // NLEN = 1024, file only holds 126 bytes
      ]);

      expect(
        () => const NdefBadgeReader().read(transceiver),
        throwsFormatException,
      );
    });

    test('throws when SELECT NDEF app fails', () async {
      final transceiver = FakeTransceiver([
        _fail(0x6A, 0x82),
      ]);

      expect(
        () => const NdefBadgeReader().read(transceiver),
        throwsStateError,
      );
    });

    test(
      'throws when the Capability Container layout is unrecognised',
      () async {
        final transceiver = FakeTransceiver([
          _ok(),
          _ok(),
          _dataOk(List.filled(15, 0xAA)),
        ]);

        expect(
          () => const NdefBadgeReader().read(transceiver),
          throwsStateError,
        );
      },
    );

    test('throws when the message READ returns an empty chunk', () async {
      final message = NdefMessage([NdefRecord.text('hello')]);
      final serialized = message.serialize();

      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(),
        _ok(),
        _dataOk([0x00, serialized.length]),
        _dataOk(const []), // empty READ — bad
      ]);

      expect(
        () => const NdefBadgeReader().read(transceiver),
        throwsFormatException,
      );
    });

    test('throws when the message bytes do not parse as NDEF', () async {
      final transceiver = FakeTransceiver([
        _ok(),
        _ok(),
        _ccSuccess(),
        _ok(),
        _dataOk([0x00, 0x04]),
        _dataOk([0xDE, 0xAD, 0xBE, 0xEF]),
      ]);

      expect(
        () => const NdefBadgeReader().read(transceiver),
        throwsFormatException,
      );
    });

    test(
      'full round-trip: write then read yields the original message',
      () async {
        final original = NdefMessage([
          NdefRecord.uri(Uri.parse('https://example.com')),
          NdefRecord.text(
            'Johannes Pietilä Löhnn · Organizer · x.com/johannes',
          ),
        ]);
        final serialized = original.serialize();

        final transceiver = FakeTransceiver([
          _ok(),
          _ok(),
          _ccSuccess(),
          _ok(),
          _dataOk([
            (serialized.length >> 8) & 0xFF,
            serialized.length & 0xFF,
          ]),
          _dataOk(serialized),
        ]);

        final read = await const NdefBadgeReader().read(transceiver);

        expect(read.records, hasLength(2));
        expect(
          read.records[0].decodeUri(),
          equals(Uri.parse('https://example.com')),
        );
        expect(
          read.records[1].decodeText().text,
          equals('Johannes Pietilä Löhnn · Organizer · x.com/johannes'),
        );

        // And through the convenience decoder:
        final person = BadgePerson.fromNdefMessage(read);
        expect(person.name, equals('Johannes Pietilä Löhnn'));
        expect(person.role, equals('Organizer'));
        expect(person.urls, equals(['x.com/johannes']));
        expect(person.primaryUri, equals(Uri.parse('https://example.com')));
      },
    );
  });
}
