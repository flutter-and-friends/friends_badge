import 'dart:typed_data';

import 'package:image/image.dart' as img;

enum ColorPalette {
  blackAndWhite,
  blackWhiteRed,
  blackWhiteYellow,
}

class ImageConverter {
  final List<List<img.Color>> _palettes = [
    [img.ColorRgb8(0, 0, 0), img.ColorRgb8(255, 255, 255)],
    [
      img.ColorRgb8(0, 0, 0),
      img.ColorRgb8(255, 255, 255),
      img.ColorRgb8(255, 0, 0),
    ],
    [
      img.ColorRgb8(0, 0, 0),
      img.ColorRgb8(255, 255, 255),
      img.ColorRgb8(255, 255, 0),
    ],
  ];

  img.Image resizeImage(img.Image image, int width, int height) {
    return img.copyResize(image, width: width, height: height);
  }

  Uint8List convertImage(img.Image image, ColorPalette palette) {
    final paletteIndex = palette.index;
    final ditheredImage = _floydSteinbergDither(image, _palettes[paletteIndex]);
    return _imageToBytes(ditheredImage, paletteIndex);
  }

  Uint8List _imageToBytes(img.Image image, int paletteIndex) {
    final width = image.width;
    final height = image.height;
    final blackAndWhite = Uint8List(width * height ~/ 8);
    final redOrYellow = Uint8List(width * height ~/ 8);
    final palette = _palettes[paletteIndex];

    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final pixel = image.getPixel(x, y);
        final isBlack = pixel == palette[0];
        final isRedOrYellow = pixel == palette.last;

        final bwBit = isBlack ? 0 : 1;
        final redOrYellowBit = isRedOrYellow ? 1 : 0;

        final byteIndex = (x ~/ 8) * height + (height - 1 - y);

        blackAndWhite[byteIndex] = (blackAndWhite[byteIndex] << 1) | bwBit;
        redOrYellow[byteIndex] = redOrYellowBit | (redOrYellow[byteIndex] << 1);
      }
    }

    if (paletteIndex == 0) {
      return blackAndWhite;
    }
    return Uint8List.fromList(blackAndWhite + redOrYellow);
  }

  img.Image _floydSteinbergDither(img.Image src, List<img.Color> palette) {
    final image = img.copyResize(src, width: src.width, height: src.height);

    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final oldPixel = image.getPixel(x, y);
        final newPixel = _findNearestColor(oldPixel, palette);
        image.setPixel(x, y, newPixel);

        final error = (
          oldPixel.r - newPixel.r.toDouble(),
          oldPixel.g - newPixel.g.toDouble(),
          oldPixel.b - newPixel.b.toDouble(),
        );

        if (x + 1 < image.width) {
          _distributeError(image, x + 1, y, error, 7 / 16);
        }
        if (x - 1 >= 0 && y + 1 < image.height) {
          _distributeError(image, x - 1, y + 1, error, 3 / 16);
        }
        if (y + 1 < image.height) {
          _distributeError(image, x, y + 1, error, 5 / 16);
        }
        if (x + 1 < image.width && y + 1 < image.height) {
          _distributeError(image, x + 1, y + 1, error, 1 / 16);
        }
      }
    }

    return image;
  }

  img.Color _findNearestColor(img.Color color, List<img.Color> palette) {
    var closestColor = palette[0];
    var minDistance = double.maxFinite;

    for (final c in palette) {
      final distance = _colorDistance(color, c);
      if (distance < minDistance) {
        minDistance = distance;
        closestColor = c;
      }
    }

    return closestColor;
  }

  double _colorDistance(img.Color c1, img.Color c2) {
    final r = c1.r - c2.r;
    final g = c1.g - c2.g;
    final b = c1.b - c2.b;
    return (r * r + g * g + b * b).toDouble();
  }

  void _distributeError(
    img.Image image,
    int x,
    int y,
    (double, double, double) error,
    double factor,
  ) {
    final pixel = image.getPixel(x, y);
    pixel.r = (pixel.r + error.$1 * factor).clamp(0, 255);
    pixel.g = (pixel.g + error.$2 * factor).clamp(0, 255);
    pixel.b = (pixel.b + error.$3 * factor).clamp(0, 255);
  }
}
