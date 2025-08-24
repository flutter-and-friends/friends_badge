import 'dart:typed_data';

import 'package:image/image.dart' as img;

enum ColorPalette {
  blackAndWhite,
  blackWhiteRed,
  blackWhiteYellow,
}

enum BadgeSize {
  size3_7inch(width: 240, height: 416);

  final int height;
  final int width;

  const BadgeSize({required this.width, required this.height});
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

  Uint8List convertImage(
    img.Image image,
    ColorPalette palette, [
    BadgeSize size = BadgeSize.size3_7inch,
  ]) {
    final resizedImage = resizeImage(
      image,
      size.width,
      size.height,
    );
    final paletteIndex = palette.index;
    final ditheredImage = _noDither(resizedImage, _palettes[paletteIndex]);
    return _imageToBytes(ditheredImage, paletteIndex);
  }

  img.Image resizeImage(img.Image image, int width, int height) {
    return img.copyResize(image, width: width, height: height);
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

  img.Image _noDither(img.Image src, List<img.Color> palette) {
    final image = img.copyResize(src, width: src.width, height: src.height);

    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final oldPixel = image.getPixel(x, y);
        final newPixel = _findNearestColor(oldPixel, palette);
        image.setPixel(x, y, newPixel);
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
}
