import 'dart:convert';
import 'dart:typed_data';

/// An NFC Forum NDEF record.
///
/// Records are the atomic unit of an [NdefMessage]. This model implements the
/// subset of the NDEF specification needed to communicate with the badge:
/// short records (SR=1), no ID field, no chunking.
class NdefRecord {
  NdefRecord({
    required this.tnf,
    required this.type,
    required this.payload,
  }) {
    if (type.length > 255) {
      throw ArgumentError.value(
        type.length,
        'type.length',
        'Type length must fit in a single byte (<=255).',
      );
    }
    if (payload.length > 0xFFFFFFFF) {
      throw ArgumentError.value(
        payload.length,
        'payload.length',
        'Payload length must fit in 32 bits.',
      );
    }
  }

  /// NFC Forum well-known type "U" (URI), as defined by the URI RTD spec.
  ///
  /// The [uri] is compressed using the URI prefix table (e.g. `https://`
  /// collapses to a single identifier byte).
  factory NdefRecord.uri(Uri uri) {
    final uriString = uri.toString();
    var identifier = 0x00;
    var remainder = uriString;
    for (var i = 1; i < _uriPrefixes.length; i++) {
      final prefix = _uriPrefixes[i];
      if (uriString.startsWith(prefix)) {
        identifier = i;
        remainder = uriString.substring(prefix.length);
        break;
      }
    }
    final remainderBytes = utf8.encode(remainder);
    final payload = Uint8List(1 + remainderBytes.length)
      ..[0] = identifier
      ..setRange(1, 1 + remainderBytes.length, remainderBytes);
    return NdefRecord(
      tnf: tnfWellKnown,
      type: Uint8List.fromList(const [0x55]), // "U"
      payload: payload,
    );
  }

  /// NFC Forum well-known type "T" (Text), as defined by the Text RTD spec.
  ///
  /// Encoded as UTF-8 with the given [languageCode] (default `en`).
  factory NdefRecord.text(String text, {String languageCode = 'en'}) {
    final languageBytes = ascii.encode(languageCode);
    if (languageBytes.length > 63) {
      throw ArgumentError.value(
        languageCode,
        'languageCode',
        'Language code must be <=63 bytes (6-bit length field).',
      );
    }
    final textBytes = utf8.encode(text);
    final payloadLength = 1 + languageBytes.length + textBytes.length;
    final payload = Uint8List(payloadLength)
      ..[0] = languageBytes.length // UTF-8 (bit7=0) + 6-bit length
      ..setRange(1, 1 + languageBytes.length, languageBytes)
      ..setRange(1 + languageBytes.length, payloadLength, textBytes);
    return NdefRecord(
      tnf: tnfWellKnown,
      type: Uint8List.fromList(const [0x54]), // "T"
      payload: payload,
    );
  }

  /// Type Name Format: NFC Forum well-known type.
  static const int tnfWellKnown = 0x01;

  /// The Type Name Format of this record.
  final int tnf;

  /// The record type as raw bytes (e.g. `0x55` for "U", `0x54` for "T").
  final Uint8List type;

  /// The record payload.
  final Uint8List payload;

  /// Serializes this record to its wire representation.
  ///
  /// [isFirst] sets the MB (Message Begin) flag; [isLast] sets the ME
  /// (Message End) flag.
  Uint8List serialize({required bool isFirst, required bool isLast}) {
    final isShort = payload.length <= 255;
    final header = ByteData(1)
      ..setUint8(
        0,
        (isFirst ? 0x80 : 0x00) | // MB
            (isLast ? 0x40 : 0x00) | // ME
            (isShort ? 0x10 : 0x00) | // SR
            (tnf & 0x07),
      );

    final builder = BytesBuilder()
      ..add(header.buffer.asUint8List())
      ..addByte(type.length);

    if (isShort) {
      builder.addByte(payload.length);
    } else {
      final length = ByteData(4)..setUint32(0, payload.length);
      builder.add(length.buffer.asUint8List());
    }

    // No ID field (IL=0).
    builder
      ..add(type)
      ..add(payload);
    return builder.toBytes();
  }

  @override
  String toString() {
    final typeString = String.fromCharCodes(type);
    return 'NdefRecord(tnf: 0x${tnf.toRadixString(16)}, '
        'type: "$typeString", payload: ${payload.length} bytes)';
  }

  /// `true` if this record is a well-known URI record (TNF=1, type="U").
  bool get isUri =>
      tnf == tnfWellKnown && type.length == 1 && type[0] == 0x55;

  /// `true` if this record is a well-known Text record (TNF=1, type="T").
  bool get isText =>
      tnf == tnfWellKnown && type.length == 1 && type[0] == 0x54;

  /// Decodes the payload as an NFC Forum URI record.
  ///
  /// Throws [FormatException] if the record is not a URI record or the
  /// payload is malformed.
  Uri decodeUri() {
    if (!isUri) {
      throw FormatException(
        'Not a URI record: tnf=0x${tnf.toRadixString(16)}, '
        'type=${String.fromCharCodes(type)}',
      );
    }
    if (payload.isEmpty) {
      throw const FormatException('URI record payload is empty');
    }
    final identifier = payload[0];
    if (identifier >= _uriPrefixes.length) {
      throw FormatException(
        'Unknown URI prefix identifier: 0x${identifier.toRadixString(16)}',
      );
    }
    final prefix = _uriPrefixes[identifier];
    final remainder = utf8.decode(payload.sublist(1));
    return Uri.parse(prefix + remainder);
  }

  /// Decodes the payload as an NFC Forum Text record.
  ///
  /// Returns the decoded text and the language code in a [DecodedTextRecord].
  /// Throws [FormatException] if the record is not a Text record or the
  /// payload is malformed.
  DecodedTextRecord decodeText() {
    if (!isText) {
      throw FormatException(
        'Not a Text record: tnf=0x${tnf.toRadixString(16)}, '
        'type=${String.fromCharCodes(type)}',
      );
    }
    if (payload.isEmpty) {
      throw const FormatException('Text record payload is empty');
    }
    final statusByte = payload[0];
    final isUtf16 = (statusByte & 0x80) != 0;
    final languageLength = statusByte & 0x3F;
    if (payload.length < 1 + languageLength) {
      throw FormatException(
        'Text record payload too short for declared language length '
        '($languageLength)',
      );
    }
    final language = ascii.decode(payload.sublist(1, 1 + languageLength));
    final textBytes = payload.sublist(1 + languageLength);
    final text = isUtf16
        ? String.fromCharCodes(_decodeUtf16(textBytes))
        : utf8.decode(textBytes);
    return DecodedTextRecord(text: text, languageCode: language);
  }

  /// Decodes a UTF-16 (BE or LE, with optional BOM) byte sequence into a
  /// list of UTF-16 code units.
  static List<int> _decodeUtf16(Uint8List bytes) {
    if (bytes.length < 2) {
      return const [];
    }
    var start = 0;
    var littleEndian = false;
    // BOM detection
    if (bytes[0] == 0xFE && bytes[1] == 0xFF) {
      start = 2; // big-endian BOM
    } else if (bytes[0] == 0xFF && bytes[1] == 0xFE) {
      start = 2;
      littleEndian = true;
    }
    final codeUnits = <int>[];
    for (var i = start; i + 1 < bytes.length; i += 2) {
      final codeUnit = littleEndian
          ? bytes[i] | (bytes[i + 1] << 8)
          : (bytes[i] << 8) | bytes[i + 1];
      codeUnits.add(codeUnit);
    }
    return codeUnits;
  }
}

/// The decoded contents of a Text record: the text itself plus its language
/// code (e.g. `"en"`).
class DecodedTextRecord {
  const DecodedTextRecord({required this.text, required this.languageCode});

  /// The decoded text.
  final String text;

  /// The language code from the record header.
  final String languageCode;

  @override
  String toString() => 'DecodedTextRecord(language: $languageCode, '
      'text: "$text")';
}

/// URI prefix table from the NFC Forum URI RTD specification.
/// Index 0 is "no prefix"; the rest are well-known prefixes.
const List<String> _uriPrefixes = [
  '',
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

/// An NFC Forum NDEF message: an ordered sequence of [NdefRecord]s.
class NdefMessage {
  NdefMessage(this.records) {
    if (records.isEmpty) {
      throw ArgumentError.value(
        records,
        'records',
        'An NDEF message must contain at least one record.',
      );
    }
  }

  /// The records that make up this message, in order.
  final List<NdefRecord> records;

  /// Serializes this message to its wire representation.
  ///
  /// The first record carries the MB flag, the last carries the ME flag.
  Uint8List serialize() {
    final builder = BytesBuilder();
    for (var i = 0; i < records.length; i++) {
      builder.add(
        records[i].serialize(
          isFirst: i == 0,
          isLast: i == records.length - 1,
        ),
      );
    }
    return builder.toBytes();
  }

  /// Parses a serialized NDEF message back into an [NdefMessage].
  ///
  /// Handles both short- and long-record framing and joins chunked records
  /// (CF flag) into a single record. Throws [FormatException] on malformed
  /// input.
  factory NdefMessage.parse(Uint8List bytes) {
    if (bytes.isEmpty) {
      throw const FormatException('NDEF message is empty');
    }
    final records = <NdefRecord>[];
    var offset = 0;
    var seenMessageBegin = false;
    var seenMessageEnd = false;

    // Chunked-record assembly state.
    var pendingTnf = 0;
    Uint8List? pendingType;
    BytesBuilder? pendingPayload;

    while (offset < bytes.length && !seenMessageEnd) {
      final header = bytes[offset];
      final mb = (header & 0x80) != 0;
      final me = (header & 0x40) != 0;
      final cf = (header & 0x20) != 0;
      final sr = (header & 0x10) != 0;
      final il = (header & 0x08) != 0;
      final tnf = header & 0x07;
      offset++;

      if (offset >= bytes.length) {
        throw FormatException(
          'Truncated NDEF record header at offset ${offset - 1}',
        );
      }

      // MB must be set on the first record of the message.
      if (!seenMessageBegin) {
        if (!mb) {
          throw const FormatException(
            'First NDEF record does not have MB (Message Begin) set',
          );
        }
        seenMessageBegin = true;
      }

      final typeLength = bytes[offset];
      offset++;

      int payloadLength;
      if (sr) {
        if (offset >= bytes.length) {
          throw const FormatException(
            'Truncated NDEF short-record payload length',
          );
        }
        payloadLength = bytes[offset];
        offset++;
      } else {
        if (offset + 4 > bytes.length) {
          throw const FormatException(
            'Truncated NDEF long-record payload length',
          );
        }
        payloadLength = ByteData.view(
          bytes.buffer,
          bytes.offsetInBytes + offset,
        ).getUint32(0);
        offset += 4;
      }

      var idLength = 0;
      if (il) {
        if (offset >= bytes.length) {
          throw const FormatException('Truncated NDEF ID length');
        }
        idLength = bytes[offset];
        offset++;
      }

      if (offset + typeLength + idLength + payloadLength > bytes.length) {
        throw FormatException(
          'NDEF record at offset ${offset - 1} extends past end of message',
        );
      }

      final type = Uint8List.fromList(
        bytes.sublist(offset, offset + typeLength),
      );
      offset += typeLength;
      // Skip the ID field if present — we don't use it.
      offset += idLength;
      final payload = Uint8List.fromList(
        bytes.sublist(offset, offset + payloadLength),
      );
      offset += payloadLength;

      if (cf) {
        // Chunked record. First chunk carries the type; continuation chunks
        // have TNF=0 and empty type.
        final assemblingType = pendingType;
        final assemblingPayload = pendingPayload;
        if (assemblingType == null || assemblingPayload == null) {
          // First chunk.
          pendingTnf = tnf;
          pendingType = type;
          pendingPayload = BytesBuilder()..add(payload);
        } else {
          // Continuation chunk.
          if (typeLength != 0) {
            throw const FormatException(
              'NDEF continuation chunk carries a type',
            );
          }
          assemblingPayload.add(payload);
        }
        if (me) {
          // Last chunk — emit the assembled record.
          final finalType = pendingType;
          final finalPayload = pendingPayload;
          if (finalType == null || finalPayload == null) {
            throw const FormatException(
              'NDEF message ended inside a chunked record',
            );
          }
          records.add(
            NdefRecord(
              tnf: pendingTnf,
              type: finalType,
              payload: finalPayload.toBytes(),
            ),
          );
          pendingType = null;
          pendingPayload = null;
          seenMessageEnd = true;
        }
      } else {
        // Unchunked record. If we were mid-chunk, that's an error.
        if (pendingType != null) {
          throw const FormatException(
            'NDEF message has an unterminated chunked record',
          );
        }
        records.add(NdefRecord(tnf: tnf, type: type, payload: payload));
        if (me) {
          seenMessageEnd = true;
        }
      }
    }

    if (!seenMessageEnd) {
      throw const FormatException(
        'NDEF message ended without an ME (Message End) record',
      );
    }
    if (records.isEmpty) {
      throw const FormatException('NDEF message contained no records');
    }
    return NdefMessage(records);
  }

  @override
  String toString() => 'NdefMessage(${records.length} records)';
}
