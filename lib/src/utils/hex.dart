
import 'dart:typed_data';

class Hex {
  static String encode(Uint8List bytes) {
    return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
  }
}
