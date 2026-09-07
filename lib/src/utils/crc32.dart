import 'dart:typed_data';

/// The badge's CRC-32 variant, ported exactly from the vendor app's
/// `CRC32Utils.java`.
///
/// It is a table-driven CRC with polynomial `0xEDB88320`, but unlike every
/// standard library variant it is processed MSB-first with init `0`, no
/// input reflection, no output reflection and no final XOR. It matches no
/// catalog CRC: the classic zlib-style CRC-32 (check `0xCBF43926`) can
/// never produce the badge's values. The correct check value is
/// [checkValue].
class Crc32 {
  /// CRC of the ASCII string "123456789" — the pin against the vendor
  /// implementation; any deviation here breaks the wire protocol.
  static const int checkValue = 0xFDA41140;

  /// Table indexed by `(byte ^ (crc >> 24)) & 0xFF`, equivalent to the
  /// vendor's `(b ^ (i >> 24)) & 255` lookups.
  static final List<int> _table = _buildTable();

  static List<int> _buildTable() {
    const poly = 0xEDB88320;
    final table = List<int>.filled(256, 0);
    for (var i = 0; i < 256; i++) {
      var value = (i << 24) & 0xFFFFFFFF;
      for (var bit = 0; bit < 8; bit++) {
        value =
            ((value << 1) & 0xFFFFFFFF) ^
            (((value & 0x80000000) != 0) ? poly : 0);
      }
      table[i] = value;
    }
    return table;
  }

  /// CRC of a single byte sequence, optionally continuing from a [seed].
  static int ofBytes(Uint8List bytes, {int seed = 0}) {
    var crc = seed & 0xFFFFFFFF;
    for (final byte in bytes) {
      crc = ((crc << 8) ^ _table[(byte ^ (crc >> 24)) & 0xFF]) & 0xFFFFFFFF;
    }
    return crc;
  }

  /// CRC over all [planes] concatenated, computed by feeding each plane
  /// into the next as the new seed — algebraically identical to one CRC
  /// over the concatenation, and exactly how the vendor app chains its
  /// image planes for the badge's CRC query.
  static int calculate(List<Uint8List> planes) {
    var crc = 0;
    for (final plane in planes) {
      crc = ofBytes(plane, seed: crc);
    }
    return crc;
  }
}
