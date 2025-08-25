import 'dart:typed_data';

import 'package:image/image.dart' as img;

typedef ColorPaletteColor = ({int r, int g, int b});

enum ColorPalette {
  blackWhite(
    [(r: 0, g: 0, b: 0), (r: 255, g: 255, b: 255)],
  ),
  blackWhiteRed(
    [
      (r: 0, g: 0, b: 0),
      (r: 255, g: 255, b: 255),
      (r: 255, g: 0, b: 0),
    ],
  ),
  blackWhiteYellow(
    [
      (r: 0, g: 0, b: 0),
      (r: 255, g: 255, b: 255),
      (r: 255, g: 255, b: 0),
    ],
  );

  final List<ColorPaletteColor> paletteValues;

  List<img.Color> get colors => paletteValues
      .map((e) => img.ColorRgb8(e.r, e.g, e.b))
      .toList(growable: false);

  const ColorPalette(this.paletteValues);
}

enum BadgeSize {
  size3_7inch(width: 240, height: 416);

  final int height;
  final int width;

  const BadgeSize({required this.width, required this.height});
}

class ImageConverter {
  List<Uint8List> convertImage(
    img.Image image,
    ColorPalette palette, [
    BadgeSize size = BadgeSize.size3_7inch,
  ]) {
    final resizedImage = resizeImage(
      image,
      size,
    );
    final ditheredImage = noDither(resizedImage, palette);
    return gray2BinaryBWR(image);
    // return _imageToBytes(ditheredImage, palette);
  }

  img.Image resizeImage(img.Image image, BadgeSize size) {
    return img.copyResize(image, width: size.width, height: size.height);
  }

  List<Uint8List> _imageToBytes(img.Image image, ColorPalette palette) {
    final width = image.width;
    final height = image.height;
    final blackAndWhite = Uint8List(width * height ~/ 8);
    final redOrYellow = Uint8List(width * height ~/ 8);

    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final pixel = image.getPixel(x, y);
        final isBlack = pixel == palette.colors[0];
        final isRedOrYellow = pixel == palette.colors.last;

        final bwBit = isBlack ? 0 : 1;
        final redOrYellowBit = isRedOrYellow ? 1 : 0;

        final byteIndex = (x ~/ 8) * height + (height - 1 - y);

        blackAndWhite[byteIndex] = (blackAndWhite[byteIndex] << 1) | bwBit;
        redOrYellow[byteIndex] = redOrYellowBit | (redOrYellow[byteIndex] << 1);
      }
    }

    if (palette == ColorPalette.blackWhite) {
      return [blackAndWhite];
    }
    return [blackAndWhite, redOrYellow];
  }

  /// Converts an image to two separate 1-bit-per-pixel byte arrays.
  ///
  /// This is used for dual-layer e-ink displays (e.g., Black/White and Red).
  ///
  /// - The first array (`outputBytes1`) contains the Black/White data:
  ///   - 1 for dark pixels (luminance <= 95)
  ///   - 0 for light pixels (luminance > 95)
  /// - The second array (`outputBytes2`) contains the Red overlay data:
  ///   - 1 for red-like pixels
  ///   - 0 for all other colors
  ///
  /// Both output arrays are stored in a vertically flipped column-major order.
  List<Uint8List> gray2BinaryBW(img.Image image) {
    final width = image.width;
    final height = image.height;
    final totalPixels = width * height;

    // Each byte holds data for 8 pixels (1 bit per pixel).
    final outputSize = (totalPixels / 8).ceil();
    final outputBytes1 = Uint8List(outputSize); // For Black/White data
    final outputBytes2 = Uint8List(outputSize); // For Red overlay data

    // Loop through each pixel of the image.
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final pixel = image.getPixel(x, y);
        final r = pixel.r;
        final g = pixel.g;
        final b = pixel.b;

        // Calculate the first bit: Luminance (Black or White)
        final luminance = (r * 0.3) + (g * 0.59) + (b * 0.11);
        final value1 = (luminance <= 95) ? 1 : 0;

        // Calculate the second bit: Red overlay (if applicable)
        final isRed = r > 95 && g < 95 && b < 95;
        final value2 = isRed ? 1 : 0;

        // Calculate the index in the output array.
        // The data is stored in a vertically-flipped, column-major order.
        final index = (x ~/ 8) * height + (height - 1 - y);

        // Pack the 1-bit values into their respective byte arrays.
        // The bit is added from the right, shifting the existing bits to the left.
        outputBytes1[index] = (outputBytes1[index] << 1) | value1;
        outputBytes2[index] = (outputBytes2[index] << 1) | value2;
      }
    }

    // The original Java function returned a byte[][], so we return a List.
    return [outputBytes1, outputBytes2];
  }

  /// Converts an image to two separate 1-bit-per-pixel byte arrays.
  ///
  /// This is used for dual-layer e-ink displays (e.g., Black/White and Red).
  ///
  /// - The first array (`outputBytes1`) contains the Black/White data:
  ///   - 1 for dark pixels (luminance <= 95)
  ///   - 0 for light pixels (luminance > 95)
  /// - The second array (`outputBytes2`) contains the Red overlay data:
  ///   - 1 for red-like pixels
  ///   - 0 for all other colors
  ///
  /// Both output arrays are stored in a vertically flipped column-major order.
  List<Uint8List> gray2BinaryBWR(img.Image image) {
    final width = image.width;
    final height = image.height;
    final totalPixels = width * height;

    // Each byte holds data for 8 pixels (1 bit per pixel).
    final outputSize = (totalPixels / 8).ceil();
    final outputBytes1 = Uint8List(outputSize); // For Black/White data
    final outputBytes2 = Uint8List(outputSize); // For Red overlay data

    // Loop through each pixel of the image.
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final pixel = image.getPixel(x, y);
        final r = pixel.r;
        final g = pixel.g;
        final b = pixel.b;

        // Calculate the first bit: Luminance (Black or White)
        final luminance = (r * 0.3) + (g * 0.59) + (b * 0.11);
        final value1 = (luminance <= 95) ? 1 : 0;

        // Calculate the second bit: Red overlay (if applicable)
        final isRed = r > 95 && g < 95 && b < 95;
        final value2 = isRed ? 1 : 0;

        // Calculate the index in the output array.
        // The data is stored in a vertically-flipped, column-major order.
        final index = (x ~/ 8) * height + (height - 1 - y);

        // Pack the 1-bit values into their respective byte arrays.
        // The bit is added from the right, shifting the existing bits to the left.
        outputBytes1[index] = (outputBytes1[index] << 1) | value1;
        outputBytes2[index] = (outputBytes2[index] << 1) | value2;
      }
    }

    // The original Java function returned a byte[][], so we return a List.
    return [outputBytes1, outputBytes2];
  }

  /// Converts an image to a 2-bit-per-pixel byte array for BWYR e-ink displays.
  ///
  /// Each pixel is mapped to a 2-bit value:
  /// - 0 (00): Black
  /// - 1 (01): White
  /// - 2 (10): Yellow
  /// - 3 (11): Red
  ///
  /// The output byte array is structured in column-major order.
  List<Uint8List> gray2BinaryBWYR(img.Image image) {
    final width = image.width;
    final height = image.height;
    final totalPixels = width * height;

    // Calculate the size of the output byte array.
    // Each byte holds data for 4 pixels (2 bits per pixel).
    final outputSize = (totalPixels / 4).ceil();
    final outputBytes = Uint8List(outputSize);

    // Iterate over each pixel of the image.
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final pixel = image.getPixel(x, y);
        final r = pixel.r;
        final g = pixel.g;
        final b = pixel.b;

        // 1. Determine the base color value (Black or White) by luminance.
        final luminance = (r * 0.3) + (g * 0.59) + (b * 0.11);
        var colorValue = (luminance <= 95) ? 0 : 1; // 0 for Black, 1 for White

        // 2. Check for specific colors (Red and Yellow) and override.
        // The conditions are mutually exclusive.
        if (r > 95 && g > 95 && b < 95) {
          colorValue = 2; // Yellow
        } else if (r > 95 && g < 95 && b < 95) {
          colorValue = 3; // Red
        }

        // 3. Calculate the index in the output array.
        // The data is stored in column-major order to match the display controller.
        final index = ((x ~/ 4) * height) + y;

        // 4. Pack the 2-bit color value into the correct byte.
        // Each byte is filled with data from 4 horizontally adjacent pixels.
        outputBytes[index] = (outputBytes[index] << 2) | colorValue;
      }
    }

    // The original Java function returned a byte[][], so we wrap the result
    // in a list to match that structure.
    return [outputBytes];
  }

  img.Image noDither(img.Image src, ColorPalette palette) {
    final image = img.Image(width: src.width, height: src.height);

    for (var y = 0; y < src.height; y++) {
      for (var x = 0; x < src.width; x++) {
        final oldPixel = src.getPixel(x, y);
        final newPixel = _findNearestColor(oldPixel, palette);
        image.setPixel(x, y, newPixel);
      }
    }
    return image;
  }

  img.Color _findNearestColor(img.Color color, ColorPalette palette) {
    var closestColor = palette.colors[0];
    var minDistance = double.maxFinite;

    for (final c in palette.colors) {
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
