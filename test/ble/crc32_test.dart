import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:friends_badge/src/utils/crc32.dart';

Uint8List _bytes(List<int> byteValues) => Uint8List.fromList(byteValues);

Uint8List _ascii(String text) => Uint8List.fromList(text.codeUnits);

void main() {
  test('check value matches the vendor CRC ("123456789")', () {
    final crc = Crc32.ofBytes(_ascii('123456789'));
    expect(crc, 0xFDA41140);
    expect(crc, Crc32.checkValue);
  });

  test('an empty input has CRC 0 (init 0, no final XOR)', () {
    expect(Crc32.ofBytes(_bytes([])), 0);
    expect(Crc32.calculate([]), 0);
  });

  test('seeded CRC continues the plain CRC (chained planes)', () {
    final first = _bytes([0x00, 0x01, 0x02, 0x03]);
    final second = _bytes([0xFF, 0x00, 0x7F]);

    final chained = Crc32.calculate([first, second]);
    final concatenated = Crc32.ofBytes(_bytes([...first, ...second]));

    expect(chained, concatenated);
    expect(chained, isNot(0));
  });

  test('single plane degenerates to the plain CRC', () {
    final plane = _bytes([0x12, 0x34, 0x56, 0x78, 0x9A]);
    expect(Crc32.calculate([plane]), Crc32.ofBytes(plane));
  });

  test('seed-chaining == direct concatenation for a two-plane BWR case', () {
    // Deterministic pseudo-random plane contents; these sizes are far
    // smaller than a real badge plane but exercise multi-table-entry
    // chaining.
    final plane0 = Uint8List(51);
    final plane1 = Uint8List(34);
    for (var i = 0; i < plane0.length; i++) {
      plane0[i] = (i * 7 + 3) & 0xFF;
    }
    for (var i = 0; i < plane1.length; i++) {
      plane1[i] = (i * 13 + 11) & 0xFF;
    }

    final chained = Crc32.calculate([plane0, plane1]);
    final concatenated = Crc32.ofBytes(
      Uint8List.fromList([...plane0, ...plane1]),
    );

    expect(chained, concatenated);
  });

  test('a 64-bit int leak would corrupt the check value', () {
    // Long input: any unmasked 64-bit accumulation shifts the register out
    // of 32-bit range and cannot reproduce a 32-bit check value.
    final longInput = Uint8List(1000);
    for (var i = 0; i < longInput.length; i++) {
      longInput[i] = (i * 31 + 7) & 0xFF;
    }
    final crc = Crc32.ofBytes(longInput);
    expect(crc, inInclusiveRange(0, 0xFFFFFFFF));
    expect(
      Crc32.ofBytes(longInput),
      Crc32.calculate([longInput]),
    );
  });
}
