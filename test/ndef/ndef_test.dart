import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:friends_badge/src/ndef/ndef.dart';

void main() {
  group('NdefRecord.uri', () {
    test('encodes a bare https URL with prefix compression', () {
      final record = NdefRecord.uri(Uri.parse('https://example.com'));

      expect(record.tnf, equals(NdefRecord.tnfWellKnown));
      expect(record.type, equals(Uint8List.fromList(const [0x55]))); // "U"
      // 0x04 = "https://" prefix, remainder = "example.com"
      expect(
        record.payload,
        equals(
          Uint8List.fromList([
            0x04,
            ...utf8.encode('example.com'),
          ]),
        ),
      );
    });

    test('encodes https://www. prefix', () {
      final record = NdefRecord.uri(Uri.parse('https://www.example.com'));

      // 0x02 = "https://www."
      expect(record.payload[0], equals(0x02));
      expect(
        record.payload.sublist(1),
        equals(Uint8List.fromList(utf8.encode('example.com'))),
      );
    });

    test('encodes http://www. prefix', () {
      final record = NdefRecord.uri(Uri.parse('http://www.example.com'));

      // 0x01 = "http://www."
      expect(record.payload[0], equals(0x01));
      expect(
        record.payload.sublist(1),
        equals(Uint8List.fromList(utf8.encode('example.com'))),
      );
    });

    test('encodes http:// prefix', () {
      final record = NdefRecord.uri(Uri.parse('http://example.com'));

      // 0x03 = "http://"
      expect(record.payload[0], equals(0x03));
      expect(
        record.payload.sublist(1),
        equals(Uint8List.fromList(utf8.encode('example.com'))),
      );
    });

    test('encodes unknown scheme with no prefix compression', () {
      final record = NdefRecord.uri(Uri.parse('custom:foo'));

      // 0x00 = no prefix
      expect(record.payload[0], equals(0x00));
      expect(
        record.payload.sublist(1),
        equals(Uint8List.fromList(utf8.encode('custom:foo'))),
      );
    });

    test('preserves path and query', () {
      final record = NdefRecord.uri(
        Uri.parse('https://example.com/path?q=1'),
      );

      expect(record.payload[0], equals(0x04));
      expect(
        record.payload.sublist(1),
        equals(Uint8List.fromList(utf8.encode('example.com/path?q=1'))),
      );
    });
  });

  group('NdefRecord.text', () {
    test('encodes simple text with default language "en"', () {
      final record = NdefRecord.text('Hello');

      expect(record.tnf, equals(NdefRecord.tnfWellKnown));
      expect(record.type, equals(Uint8List.fromList(const [0x54]))); // "T"
      // status byte: UTF-8 (bit7=0) + language length (2)
      expect(record.payload[0], equals(0x02));
      expect(
        record.payload.sublist(1, 3),
        equals(Uint8List.fromList(ascii.encode('en'))),
      );
      expect(
        record.payload.sublist(3),
        equals(Uint8List.fromList(utf8.encode('Hello'))),
      );
    });

    test('encodes UTF-8 multi-byte characters correctly', () {
      final record = NdefRecord.text('Johannes Pietilä Löhnn');

      expect(record.payload[0], equals(0x02)); // UTF-8, "en"
      final textBytes = utf8.encode('Johannes Pietilä Löhnn');
      expect(
        record.payload.sublist(3),
        equals(Uint8List.fromList(textBytes)),
      );
    });

    test('encodes the wire-format badge string from the spec', () {
      final record = NdefRecord.text(
        'Johannes Pietilä Löhnn · Organizer · x.com/johannes · '
        'linkedin.com/in/johannes',
      );

      expect(record.payload[0], equals(0x02));
      final textBytes = utf8.encode(
        'Johannes Pietilä Löhnn · Organizer · x.com/johannes · '
        'linkedin.com/in/johannes',
      );
      expect(
        record.payload.sublist(3),
        equals(Uint8List.fromList(textBytes)),
      );
    });

    test('respects a custom language code', () {
      final record = NdefRecord.text('Hej', languageCode: 'sv');

      expect(record.payload[0], equals(0x02));
      expect(
        record.payload.sublist(1, 3),
        equals(Uint8List.fromList(ascii.encode('sv'))),
      );
    });

    test('rejects a language code longer than 63 bytes', () {
      expect(
        () => NdefRecord.text('x', languageCode: 'a' * 64),
        throwsArgumentError,
      );
    });
  });

  group('NdefRecord.serialize', () {
    test('sets MB on first record only', () {
      final record = NdefRecord.text('x');
      final serialized = record.serialize(isFirst: true, isLast: false);
      // MB=1, ME=0, SR=1, TNF=0x01 → 1001 0001 = 0x91
      expect(serialized[0], equals(0x91));
    });

    test('sets ME on last record only', () {
      final record = NdefRecord.text('x');
      final serialized = record.serialize(isFirst: false, isLast: true);
      // MB=0, ME=1, SR=1, TNF=0x01 → 0101 0001 = 0x51
      expect(serialized[0], equals(0x51));
    });

    test('sets both MB and ME on a single-record message', () {
      final record = NdefRecord.text('x');
      final serialized = record.serialize(isFirst: true, isLast: true);
      // 1101 0001 = 0xD1
      expect(serialized[0], equals(0xD1));
    });

    test('sets neither MB nor ME on a middle record', () {
      final record = NdefRecord.text('x');
      final serialized = record.serialize(isFirst: false, isLast: false);
      // 0001 0001 = 0x11
      expect(serialized[0], equals(0x11));
    });

    test('uses short-record (SR) format when payload <= 255 bytes', () {
      final record = NdefRecord.text('short');
      final serialized = record.serialize(isFirst: true, isLast: true);

      expect(serialized[0] & 0x10, equals(0x10)); // SR bit set
      // Layout: header(1) + typeLen(1) + payloadLen(1) + type(1) + payload
      expect(serialized[1], equals(1)); // type length
      expect(serialized[2], equals(record.payload.length)); // payload length
      expect(serialized[3], equals(0x54)); // type "T"
      expect(
        serialized.sublist(4),
        equals(record.payload),
      );
    });

    test('uses long-record format when payload > 255 bytes', () {
      final longText = 'a' * 300;
      final record = NdefRecord.text(longText);
      final serialized = record.serialize(isFirst: true, isLast: true);

      expect(serialized[0] & 0x10, equals(0x00)); // SR bit clear
      expect(serialized[1], equals(1)); // type length
      // 4-byte big-endian payload length
      final payloadLength = ByteData.view(
        Uint8List.fromList(serialized.sublist(2, 6)).buffer,
      ).getUint32(0);
      expect(payloadLength, equals(record.payload.length));
      expect(serialized[6], equals(0x54)); // type "T"
      expect(serialized.sublist(7), equals(record.payload));
    });
  });

  group('NdefMessage', () {
    test('rejects an empty record list', () {
      expect(() => NdefMessage(const []), throwsArgumentError);
    });

    test('serializes a single record with both MB and ME set', () {
      final message = NdefMessage([NdefRecord.text('Hello')]);
      final serialized = message.serialize();

      expect(serialized[0], equals(0xD1));
    });

    test('serializes a 2-record message with MB on first, ME on last', () {
      final message = NdefMessage([
        NdefRecord.uri(Uri.parse('https://example.com')),
        NdefRecord.text('Alice · Dev · example.com'),
      ]);
      final serialized = message.serialize();

      // First record: MB=1, ME=0, SR=1, TNF=1 → 0x91
      expect(serialized[0], equals(0x91));

      // Find the start of the second record by skipping the first.
      // First record layout:
      //   header(1) + typeLen(1) + payloadLen(1) + type(1) + payload(N)
      final firstPayloadLength = serialized[2];
      final secondRecordOffset = 4 + firstPayloadLength;

      // Second record: MB=0, ME=1, SR=1, TNF=1 → 0x51
      expect(serialized[secondRecordOffset], equals(0x51));
    });

    test('round-trip: serialize a badge payload and parse it back', () {
      final url = Uri.parse('https://example.com');
      const name = 'Johannes Pietilä Löhnn';
      const role = 'Organizer';
      final message = NdefMessage([
        NdefRecord.uri(url),
        NdefRecord.text('$name · $role · x.com/johannes'),
      ]);

      final bytes = message.serialize();

      // Parse record 1
      expect(bytes[0], equals(0x91)); // MB, SR, TNF=1
      expect(bytes[1], equals(1)); // type length
      final payload1Length = bytes[2];
      expect(bytes[3], equals(0x55)); // "U"
      final uriIdentifier = bytes[4];
      expect(uriIdentifier, equals(0x04)); // "https://"
      final uriRemainder = utf8.decode(bytes.sublist(5, 4 + payload1Length));
      expect(uriRemainder, equals('example.com'));

      // Parse record 2
      final offset2 = 4 + payload1Length;
      expect(bytes[offset2], equals(0x51)); // ME, SR, TNF=1
      expect(bytes[offset2 + 1], equals(1));
      final payload2Length = bytes[offset2 + 2];
      expect(bytes[offset2 + 3], equals(0x54)); // "T"
      final statusByte = bytes[offset2 + 4];
      final languageLength = statusByte & 0x3F;
      expect(languageLength, equals(2));
      final language = ascii.decode(
        bytes.sublist(offset2 + 5, offset2 + 5 + languageLength),
      );
      expect(language, equals('en'));
      final text = utf8.decode(
        bytes.sublist(
          offset2 + 5 + languageLength,
          offset2 + 4 + payload2Length,
        ),
      );
      expect(text, equals('$name · $role · x.com/johannes'));
    });
  });
}
