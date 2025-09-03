import 'dart:typed_data';

import 'package:crclib/catalog.dart';

class Crc32 {
  static int calculate(List<Uint8List> bytesList) {
    final bytes = bytesList.expand((x) => x).toList();
    return Crc32Xz().convert(bytes).toBigInt().toInt();
  }
}
