import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:image/image.dart' as img;

/// Pixel-color helpers with channel values that sit clearly away from the
/// 95 threshold, except where a boundary case is the point of the test.
const _black = (r: 0, g: 0, b: 0);
const _white = (r: 255, g: 255, b: 255);
const _red = (r: 255, g: 0, b: 0);
const _yellow = (r: 255, g: 255, b: 0);

img.Image _image(
  int width,
  int height,
  ({int r, int g, int b}) Function(int x, int y) pixelAt,
) {
  final image = img.Image(width: width, height: height);
  for (var y = 0; y < height; y++) {
    for (var x = 0; x < width; x++) {
      final pixel = pixelAt(x, y);
      image.setPixelRgb(x, y, pixel.r, pixel.g, pixel.b);
    }
  }
  return image;
}

void main() {
  const converter = ImageConverter();

  group('gray2BinaryBW (1bpp, rows bottom-to-top)', () {
    test('packs a black pixel into bit 7 of the top stored row', () {
      // 8x2 image, black only at (0,0), everything else white.
      final image = _image(
        8,
        2,
        (x, y) => (x == 0 && y == 0) ? _black : _white,
      );

      final planes = converter.gray2BinaryBW(image);

      // One byte per pixel row; rows are stored flipped (y=0 lands in the
      // LAST byte). Byte for y=0: only x=0 is black -> bit 7 set.
      expect(planes[0], [0x00, 0x80]);
      // The vendor also builds an (unused for BW) red-overlay array.
      expect(planes[1], [0x00, 0x00]);
    });

    test('column-major grouping across byte groups', () {
      // 16x8 image (width must stay a multiple of 8, as on the badge):
      // black pixels at (0,0) and (8,0), everything else white.
      final image = _image(
        16,
        8,
        (x, y) => (y == 0 && (x == 0 || x == 8)) ? _black : _white,
      );

      final planes = converter.gray2BinaryBW(image);

      // 16 bytes per plane: each 8-column group stores h=8 bytes with the
      // top row (y=0) in its LAST byte; x=0 -> bit 7 of byte 7, x=8 -> bit
      // 7 of byte 15.
      final expected = Uint8List(16);
      expected[7] = 0x80;
      expected[15] = 0x80;
      expect(planes[0], expected);
    });
  });

  group('gray2BinaryBWR (plane 0 inverted: 1 = white)', () {
    test('plane 0 polarity is inverted compared to BW', () {
      final image = _image(
        8,
        2,
        (x, y) => (x == 0 && y == 0) ? _black : _white,
      );

      final planes = converter.gray2BinaryBWR(image);

      // The single black pixel contributes 0; every white pixel 1.
      // (With the old BW-polarity copy this was [0x00, 0x80] and printed a
      // negative image.)
      expect(planes[0], [0xFF, 0x7F]);
    });

    test('plane 1 marks red pixels, plane 0 marks them dark', () {
      final image = _image(8, 2, (x, y) => (x == 4 && y == 0) ? _red : _white);

      final planes = converter.gray2BinaryBWR(image);

      // Red pixel at x=4 of row 0 -> bit 3 of the byte holding y=0.
      expect(planes[1], [0x00, 0x08]);
      // A pure red pixel has luminance 76 <= 95, so plane 0 (inverted)
      // packs 0 for it and 1 everywhere else.
      expect(planes[0], [0xFF, 0xF7]);
    });
  });

  group('gray2BinaryBWYR (2bpp, rows NOT flipped)', () {
    test('packs black/white/yellow/red as 0/1/2/3, leftmost in top bits', () {
      // 4x2: row 0 = black, white, yellow, red; row 1 = all white.
      final image = _image(
        4,
        2,
        (x, y) => switch ((x, y)) {
          (0, 0) => _black,
          (1, 0) => _white,
          (2, 0) => _yellow,
          (3, 0) => _red,
          _ => _white,
        },
      );

      final planes = converter.gray2BinaryBWYR(image);

      // Byte 0 holds row 0 (not flipped!): 00 01 10 11 = 0x1B.
      // Byte 1 holds row 1: all white = 01 01 01 01 = 0x55.
      expect(planes[0], [0x1B, 0x55]);
    });
  });

  group('vendor luminance arithmetic (integer truncation)', () {
    test('a threshold-boundary pixel stays black', () {
      // r=95, g=96, b=95: 0.3*95 + 0.59*96 + 0.11*95 = 95.59, truncated to
      // 95 by the vendor's (int) cast -> <= 95 -> black. A double
      // comparison would read 95.59 > 95 and flip the pixel white.
      final image = _image(
        8,
        1,
        (x, y) => (x == 0 && y == 0) ? (r: 95, g: 96, b: 95) : _white,
      );

      final planes = converter.gray2BinaryBW(image);
      expect(planes[0][0], 0x80);
    });

    test('exactly 95 luminance is black, 96 is white', () {
      final image = _image(
        8,
        1,
        (x, y) => switch ((x, y)) {
          (0, 0) => _black, // luminance 0
          (1, 0) => (r: 95, g: 0, b: 0), // luminance 28 (black)
          (2, 0) => (r: 96, g: 96, b: 96), // luminance 96 (white)
          _ => _white,
        },
      );

      final planes = converter.gray2BinaryBW(image);
      // x=0,1 black (1), x=2..7 white (0) -> 1100 0000 = 0xC0.
      expect(planes[0][0], 0xC0);
    });
  });
}
