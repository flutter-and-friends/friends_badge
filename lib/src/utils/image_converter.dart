import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/utils/badge_size.dart';
import 'package:friends_badge/src/utils/color_palette.dart';
import 'package:image/image.dart' as img;

@internal
class ImageConverter {
  @internal
  const ImageConverter();

  @internal
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
    return switch (palette) {
      ColorPalette.blackWhite => gray2BinaryBW(ditheredImage),
      ColorPalette.blackWhiteRed => gray2BinaryBWR(ditheredImage),
      ColorPalette.blackWhiteYellowRed => gray2BinaryBWYR(ditheredImage),
    };
  }

  img.Image resizeImage(img.Image image, BadgeSize size) {
    return img.copyResize(image, width: size.width, height: size.height);
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
        // The bit is added from the right, shifting the existing bits to the
        // left.
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
        // The bit is added from the right, shifting the existing bits to the
        // left.
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
        // The data is stored in column-major order to match the display
        // controller.
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

  /// Dithers the image with the specified palette using the default dithering
  /// algorithm (currently no dithering).
  img.Image dither(
    img.Image src, [
    ColorPalette palette = ColorPalette.blackWhiteYellowRed,
  ]) {
    return floydSteinbergDither(src, palette);
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

  img.Image floydSteinbergDither(img.Image src, ColorPalette palette) {
    final image = img.Image.from(src);

    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final oldPixel = image.getPixel(x, y);
        final newPixel = _findNearestColor(oldPixel, palette);
        image.setPixel(x, y, newPixel);

        final error = (
          (oldPixel.r - newPixel.r).toInt(),
          (oldPixel.g - newPixel.g).toInt(),
          (oldPixel.b - newPixel.b).toInt(),
        );

        _distributeError(image, x + 1, y, error, 7 / 16.0);
        _distributeError(
          image,
          x - 1,
          y + 1,
          error,
          3 / 16,
        );
        _distributeError(image, x, y + 1, error, 5 / 16.0);
        _distributeError(
          image,
          x + 1,
          y + 1,
          error,
          1 / 16,
        );
      }
    }

    return image;
  }

  void _distributeError(
    img.Image image,
    int x,
    int y,
    (num, num, num) error,
    double factor,
  ) {
    final pixel = image.getPixel(x, y);
    pixel.r = (pixel.r + error.$1 * factor).clamp(0, 255);
    pixel.g = (pixel.g + error.$2 * factor).clamp(0, 255);
    pixel.b = (pixel.b + error.$3 * factor).clamp(0, 255);

    if (x >= 0 && x < image.width && y >= 0 && y < image.height) {
      final pixel = image.getPixel(x, y);
      pixel.r = (pixel.r.toInt() + (error.$1 * factor).round()).clamp(0, 255);
      pixel.g = (pixel.g.toInt() + (error.$2 * factor).round()).clamp(0, 255);
      pixel.b = (pixel.b.toInt() + (error.$3 * factor).round()).clamp(0, 255);
    }
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
