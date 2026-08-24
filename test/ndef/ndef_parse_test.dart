import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:friends_badge/friends_badge.dart';

void main() {
  group('NdefRecord.decodeUri', () {
    test('decodes a https:// URI written by NdefRecord.uri', () {
      final original = NdefRecord.uri(Uri.parse('https://example.com'));
      final decoded = original.decodeUri();
      expect(decoded, equals(Uri.parse('https://example.com')));
    });

    test('decodes every prefix in the URI RTD table', () {
      const prefixes = [
        '', // 0x00 — no prefix
        'http://www.',
        'https://www.',
        'http://',
        'https://',
        'tel:',
        'mailto:',
        'ftp://anonymous:anonymous@',
        'ftp://ftp.',
        'ftps://',
        'sftp://',
        'smb://',
        'nfs://',
        'ftp://',
        'dav://',
        'news:',
        'telnet://',
        'imap:',
        'rtsp://',
        'urn:',
        'pop:',
        'sip:',
        'sips:',
        'tftp:',
        'btspp://',
        'btl2cap://',
        'btgoep://',
        'tcpobex://',
        'irdaobex://',
        'file://',
        'urn:epc:id:',
        'urn:epc:tag:',
        'urn:epc:pat:',
        'urn:epc:raw:',
        'urn:epc:',
        'urn:nfc:',
      ];

      for (var i = 0; i < prefixes.length; i++) {
        final record = NdefRecord(
          tnf: NdefRecord.tnfWellKnown,
          type: Uint8List.fromList(const [0x55]),
          payload: Uint8List.fromList([
            i,
            ...utf8.encode('example.com'),
          ]),
        );
        // Compare against Uri.parse rather than a raw string — some
        // prefixes (e.g. file://) trigger Uri normalization that appends a
        // trailing slash.
        expect(
          record.decodeUri(),
          equals(Uri.parse('${prefixes[i]}example.com')),
          reason: 'prefix index $i (${prefixes[i]})',
        );
      }
    });

    test('throws on a non-URI record', () {
      final record = NdefRecord.text('not a uri');
      expect(record.decodeUri, throwsFormatException);
    });

    test('throws on an unknown prefix identifier', () {
      final record = NdefRecord(
        tnf: NdefRecord.tnfWellKnown,
        type: Uint8List.fromList(const [0x55]),
        payload: Uint8List.fromList([0x99, ...utf8.encode('x')]),
      );
      expect(record.decodeUri, throwsFormatException);
    });

    test('throws on an empty payload', () {
      final record = NdefRecord(
        tnf: NdefRecord.tnfWellKnown,
        type: Uint8List.fromList(const [0x55]),
        payload: Uint8List(0),
      );
      expect(record.decodeUri, throwsFormatException);
    });
  });

  group('NdefRecord.decodeText', () {
    test('decodes a UTF-8 text record written by NdefRecord.text', () {
      final original = NdefRecord.text('Hello, world');
      final decoded = original.decodeText();
      expect(decoded.text, equals('Hello, world'));
      expect(decoded.languageCode, equals('en'));
    });

    test('decodes UTF-8 multi-byte characters', () {
      final original = NdefRecord.text('Johannes Pietilä Löhnn');
      final decoded = original.decodeText();
      expect(decoded.text, equals('Johannes Pietilä Löhnn'));
    });

    test('respects a custom language code', () {
      final original = NdefRecord.text('Hej', languageCode: 'sv');
      final decoded = original.decodeText();
      expect(decoded.text, equals('Hej'));
      expect(decoded.languageCode, equals('sv'));
    });

    test('decodes a UTF-16 BE text record', () {
      // "Hi" in UTF-16 BE with BOM: FE FF 00 48 00 69
      final payload = Uint8List.fromList([
        0x82, // UTF-16 + language length 2
        ...ascii.encode('en'),
        0xFE, 0xFF, 0x00, 0x48, 0x00, 0x69,
      ]);
      final record = NdefRecord(
        tnf: NdefRecord.tnfWellKnown,
        type: Uint8List.fromList(const [0x54]),
        payload: payload,
      );
      expect(record.decodeText().text, equals('Hi'));
    });

    test('decodes a UTF-16 LE text record', () {
      // "Hi" in UTF-16 LE with BOM: FF FE 48 00 69 00
      final payload = Uint8List.fromList([
        0x82, // UTF-16 + language length 2
        ...ascii.encode('en'),
        0xFF, 0xFE, 0x48, 0x00, 0x69, 0x00,
      ]);
      final record = NdefRecord(
        tnf: NdefRecord.tnfWellKnown,
        type: Uint8List.fromList(const [0x54]),
        payload: payload,
      );
      expect(record.decodeText().text, equals('Hi'));
    });

    test('throws on a non-Text record', () {
      final record = NdefRecord.uri(Uri.parse('https://example.com'));
      expect(record.decodeText, throwsFormatException);
    });

    test('throws when the payload is shorter than the declared language',
        () {
      final record = NdefRecord(
        tnf: NdefRecord.tnfWellKnown,
        type: Uint8List.fromList(const [0x54]),
        payload: Uint8List.fromList([0x05, 0x65]), // declares 5, has 1
      );
      expect(record.decodeText, throwsFormatException);
    });
  });

  group('NdefMessage.parse', () {
    test('round-trips a single Text record', () {
      final original = NdefMessage([NdefRecord.text('Hello')]);
      final parsed = NdefMessage.parse(original.serialize());

      expect(parsed.records, hasLength(1));
      expect(parsed.records[0].isText, isTrue);
      expect(parsed.records[0].decodeText().text, equals('Hello'));
    });

    test('round-trips the 2-record badge payload', () {
      final original = NdefMessage([
        NdefRecord.uri(Uri.parse('https://example.com')),
        NdefRecord.text(
          'Johannes Pietilä Löhnn · Organizer · x.com/johannes',
        ),
      ]);
      final parsed = NdefMessage.parse(original.serialize());

      expect(parsed.records, hasLength(2));
      expect(
        parsed.records[0].decodeUri(),
        equals(Uri.parse('https://example.com')),
      );
      expect(
        parsed.records[1].decodeText().text,
        equals('Johannes Pietilä Löhnn · Organizer · x.com/johannes'),
      );
    });

    test('round-trips a long-record (payload > 255 bytes)', () {
      final longText = 'a' * 500;
      final original = NdefMessage([NdefRecord.text(longText)]);
      final parsed = NdefMessage.parse(original.serialize());

      expect(parsed.records, hasLength(1));
      expect(parsed.records[0].decodeText().text, equals(longText));
    });

    test('joins a chunked record split into two CF records', () {
      // Build a chunked Text record by hand:
      // chunk 1: MB=1, CF=1, SR=1, TNF=1 → 0xB1, payload "Hello, "
      // chunk 2: ME=1, CF=1, SR=1, TNF=0 → 0x70, payload "world"
      final textBytes1 = NdefRecord.text('Hello, ').payload;
      final textBytes2 = NdefRecord.text('world').payload;
      final bytes = Uint8List.fromList([
        0xB1, // MB + CF + SR + TNF=1
        0x01, // type length
        textBytes1.length,
        0x54, // "T"
        ...textBytes1,
        0x70, // ME + CF + SR + TNF=0 (continuation)
        0x00, // type length 0
        textBytes2.length,
        ...textBytes2,
      ]);

      final parsed = NdefMessage.parse(bytes);

      expect(parsed.records, hasLength(1));
      expect(parsed.records[0].isText, isTrue);
      // The two payloads were joined byte-for-byte — the result decodes
      // as a single (slightly weird) Text record.
      final decoded = parsed.records[0].decodeText();
      expect(decoded.text, contains('Hello'));
      expect(decoded.text, contains('world'));
    });

    test('throws when the first record does not have MB set', () {
      // Single record with MB=0, ME=1
      final bytes = Uint8List.fromList([
        0x51, // ME + SR + TNF=1 (no MB)
        0x01, 0x01, 0x54, 0x00,
      ]);
      expect(() => NdefMessage.parse(bytes), throwsFormatException);
    });

    test('throws when no record has ME set', () {
      final bytes = Uint8List.fromList([
        0x91, // MB + SR + TNF=1 (no ME)
        0x01, 0x01, 0x54, 0x00,
      ]);
      expect(() => NdefMessage.parse(bytes), throwsFormatException);
    });

    test('throws on empty input', () {
      expect(() => NdefMessage.parse(Uint8List(0)), throwsFormatException);
    });

    test('throws on a truncated record header', () {
      expect(
        () => NdefMessage.parse(Uint8List.fromList([0xD1])),
        throwsFormatException,
      );
    });

    test('throws when a record extends past the end of the message', () {
      final bytes = Uint8List.fromList([
        0xD1, // MB + ME + SR + TNF=1
        0x01, // type length
        0xFF, // payload length = 255 (but only a few bytes follow)
        0x54,
        0x00, 0x00,
      ]);
      expect(() => NdefMessage.parse(bytes), throwsFormatException);
    });

    test('throws on a continuation chunk with a non-zero type length', () {
      final bytes = Uint8List.fromList([
        0xB1, 0x01, 0x01, 0x54, 0x00, // chunk 1: MB+CF+SR, type "T"
        0x61, 0x01, 0x01, 0x54, 0x00, // chunk 2: ME+CF+SR+TNF=1 (bad)
      ]);
      expect(() => NdefMessage.parse(bytes), throwsFormatException);
    });

    test('throws on an unterminated chunked record', () {
      final bytes = Uint8List.fromList([
        0xB1, 0x01, 0x01, 0x54, 0x00, // chunk 1: MB+CF, no ME anywhere
      ]);
      expect(() => NdefMessage.parse(bytes), throwsFormatException);
    });
  });

  group('BadgePerson.fromNdefMessage', () {
    test('decodes the canonical badge payload', () {
      final message = NdefMessage([
        NdefRecord.uri(Uri.parse('https://linkedin.com/in/johannes')),
        NdefRecord.text(
          'Johannes Pietilä Löhnn · Organizer · x.com/johannes · '
          'linkedin.com/in/johannes',
        ),
      ]);
      final person = BadgePerson.fromNdefMessage(message);

      expect(person.name, equals('Johannes Pietilä Löhnn'));
      expect(person.role, equals('Organizer'));
      expect(
        person.urls,
        equals(['x.com/johannes', 'linkedin.com/in/johannes']),
      );
      expect(
        person.primaryUri,
        equals(Uri.parse('https://linkedin.com/in/johannes')),
      );
    });

    test('decodes a name-only Text record', () {
      final message = NdefMessage([
        NdefRecord.uri(Uri.parse('https://example.com')),
        NdefRecord.text('Alice'),
      ]);
      final person = BadgePerson.fromNdefMessage(message);

      expect(person.name, equals('Alice'));
      expect(person.role, isEmpty);
      expect(person.urls, isEmpty);
      expect(person.primaryUri, equals(Uri.parse('https://example.com')));
    });

    test('decodes an empty role ("Name · · url")', () {
      final message = NdefMessage([
        NdefRecord.text('Alice ·  · example.com'),
      ]);
      final person = BadgePerson.fromNdefMessage(message);

      expect(person.name, equals('Alice'));
      expect(person.role, isEmpty);
      expect(person.urls, equals(['example.com']));
    });

    test('decodes a badge with no T record (U only)', () {
      final message = NdefMessage([
        NdefRecord.uri(Uri.parse('https://example.com')),
      ]);
      final person = BadgePerson.fromNdefMessage(message);

      expect(person.name, isEmpty);
      expect(person.role, isEmpty);
      expect(person.urls, isEmpty);
      expect(person.primaryUri, equals(Uri.parse('https://example.com')));
    });

    test('decodes a badge with no U record (T only)', () {
      final message = NdefMessage([
        NdefRecord.text('Alice · Dev · example.com'),
      ]);
      final person = BadgePerson.fromNdefMessage(message);

      expect(person.name, equals('Alice'));
      expect(person.role, equals('Dev'));
      expect(person.urls, equals(['example.com']));
      expect(person.primaryUri, isNull);
    });

    test('tolerates a malformed U record and keeps the T record', () {
      final badU = NdefRecord(
        tnf: NdefRecord.tnfWellKnown,
        type: Uint8List.fromList(const [0x55]),
        payload: Uint8List.fromList([0x99, 0x65]), // unknown prefix
      );
      final message = NdefMessage([
        badU,
        NdefRecord.text('Alice · Dev'),
      ]);
      final person = BadgePerson.fromNdefMessage(message);

      expect(person.primaryUri, isNull);
      expect(person.name, equals('Alice'));
      expect(person.role, equals('Dev'));
    });

    test('tolerates a malformed T record and keeps the U record', () {
      final badT = NdefRecord(
        tnf: NdefRecord.tnfWellKnown,
        type: Uint8List.fromList(const [0x54]),
        payload: Uint8List(0), // empty Text payload
      );
      final message = NdefMessage([
        NdefRecord.uri(Uri.parse('https://example.com')),
        badT,
      ]);
      final person = BadgePerson.fromNdefMessage(message);

      expect(person.primaryUri, equals(Uri.parse('https://example.com')));
      expect(person.name, isEmpty);
      expect(person.role, isEmpty);
      expect(person.urls, isEmpty);
    });
  });
}
