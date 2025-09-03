
import 'dart:typed_data';

int getChecksum(List<int> packet) {
  var checksum = 0;
  for (var i = 1; i < packet.length; i++) {
    checksum = (checksum + packet[i]) & 0xFF;
  }
  return checksum;
}
