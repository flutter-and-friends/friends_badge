import 'dart:typed_data';

import 'package:image/image.dart' as img;

enum ColorPalette {
  blackAndWhite,
  blackWhiteRed,
  blackWhiteYellow,
}

class ImageConverter {
  final Map<ColorPalette, List<img.Color>> _palettes = {
    ColorPalette.blackAndWhite: [
      img.ColorRgb8(0, 0, 0),
      img.ColorRgb8(255, 255, 255),
    ],
    ColorPalette.blackWhiteRed: [
      img.ColorRgb8(0, 0, 0),
      img.ColorRgb8(255, 255, 255),
      img.ColorRgb8(255, 0, 0),
    ],
    ColorPalette.blackWhiteYellow: [
      img.ColorRgb8(0, 0, 0),
      img.ColorRgb8(255, 255, 255),
      img.ColorRgb8(255, 255, 0),
    ],
  };

  Uint8List convertImage(img.Image image, ColorPalette palette) {
    final convertedImage = floydSteinbergDither(image, _palettes[palette]!);
    return _imageToBytes(convertedImage);
  }

  Uint8List _imageToBytes(img.Image image) {
    final buffer = Uint8List(image.width * image.height ~/ 8);
    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final pixel = image.getPixel(x, y);
        final bit = pixel.r > 128 ? 1 : 0;
        final byteIndex = (y * image.width + x) ~/ 8;
        final bitIndex = (y * image.width + x) % 8;
        buffer[byteIndex] = (buffer[byteIndex] & ~(1 << (7 - bitIndex))) | (bit << (7 - bitIndex));
      }
    }
    return buffer;
  }

  img.Image floydSteinbergDither(img.Image src, List<img.Color> palette) {
    final image = img.copyResize(src, width: src.width, height: src.height);

    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final oldPixel = image.getPixel(x, y);
        final newPixel = img.findClosestColor(oldPixel, palette);
        image.setPixel(x, y, newPixel);

        final error = (
          (oldPixel.r - newPixel.r),
          (oldPixel.g - newPixel.g),
          (oldPixel.b - newPixel.b),
        );

        if (x + 1 < image.width) {
          final pixel = image.getPixel(x + 1, y);
          pixel.r = (pixel.r + error.$1 * 7 / 16).clamp(0, 255);
          pixel.g = (pixel.g + error.$2 * 7 / 16).clamp(0, 255);
          pixel.b = (pixel.b + error.$3 * 7 / 16).clamp(0, 255);
        }

        if (x - 1 >= 0 && y + 1 < image.height) {
          final pixel = image.getPixel(x - 1, y + 1);
          pixel.r = (pixel.r + error.$1 * 3 / 16).clamp(0, 255);
          pixel.g = (pixel.g + error.$2 * 3 / 16).clamp(0, 255);
          pixel.b = (pixel.b + error.$3 * 3 / 16).clamp(0, 255);
        }

        if (y + 1 < image.height) {
          final pixel = image.getPixel(x, y + 1);
          pixel.r = (pixel.r + error.$1 * 5 / 16).clamp(0, 255);
          pixel.g = (pixel.g + error.$2 * 5 / 16).clamp(0, 255);
          pixel.b = (pixel.b + error.$3 * 5 / 16).clamp(0, 255);
        }

        if (x + 1 < image.width && y + 1 < image.height) {
          final pixel = image.getPixel(x + 1, y + 1);
          pixel.r = (pixel.r + error.$1 * 1 / 16).clamp(0, 255);
          pixel.g = (pixel.g + error.$2 * 1 / 16).clamp(0, 255);
          pixel.b = (pixel.b + error.$3 * 1 / 16).clamp(0, 255);
        }
      }
    }

    return image;
  }
}
