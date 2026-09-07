import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:friends_badge/src/utils/color_palette.dart';
import 'package:image/image.dart' as img;

@internal
class const ImageConverter() {
  @internal
  List<Uint8List> convertImage(
    img.Image image, {
    required BadgeSpecification badge,
    required bool shouldCrop,
  }) {
    final preparedImage = prepareImage(
      image,
      badge: badge,
      crop: shouldCrop,
    );
    return switch (badge.colorPalette) {
      ColorPalette.blackWhite => gray2BinaryBW(preparedImage),
      ColorPalette.blackWhiteRed => gray2BinaryBWR(preparedImage),
      ColorPalette.blackWhiteYellowRed => gray2BinaryBWYR(preparedImage),
    };
  }

  @internal
  img.Image prepareImage(
    img.Image image, {
    required BadgeSpecification badge,
    bool crop = true,
  }) {
    final resizedImage = resizeImage(
      image,
      badge,
      crop: crop,
    );
    return dither(resizedImage, palette: badge.colorPalette);
  }

  img.Image resizeImage(
    img.Image src,
    BadgeSpecification size, {
    required bool crop,
  }) {
    if (src.width == size.width && src.height == size.height) {
      return src;
    }
    var image = src;

    if (crop) {
      final aspectRatio = size.width / size.height;
      final imageAspectRatio = image.width / image.height;

      final int cropWidth;
      final int cropHeight;
      if (imageAspectRatio > aspectRatio) {
        // Image is wider than target aspect ratio
        image = img.copyResize(src, height: size.height);
        cropHeight = image.height;
        cropWidth = (cropHeight * aspectRatio).round();
      } else {
        // Image is taller than target aspect ratio
        image = img.copyResize(src, width: size.width);
        cropWidth = image.width;
        cropHeight = (cropWidth / aspectRatio).round();
      }

      final offsetX = ((image.width - cropWidth) / 2).round();
      final offsetY = ((image.height - cropHeight) / 2).round();

      return img.copyCrop(
        image,
        x: offsetX,
        y: offsetY,
        width: cropWidth,
        height: cropHeight,
      );
    }

    return img.copyResize(image, width: size.width, height: size.height);
  }

  /// Dithers the image with the specified palette.
  ///
  /// Defaults to the [img package]'s Atkinson kernel — not the vendor's
  /// two-row error-diffusion algorithm (weights 3/5/1+7), though renders are
  /// acceptable. See docs/NOTES.md and docs/DATA_FORMAT.md.
  img.Image dither(
    img.Image src, {
    ColorPalette palette = .blackWhiteYellowRed,
    img.DitherKernel kernel = .atkinson,
  }) {
    return img.ditherImage(
      src,
      quantizer: palette.quantizer,
      kernel: kernel,
    );
  }

  /// Converts an image to 1-bit-per-pixel planes for black & white badges.
  ///
  /// Mirrors `ImgUtil.gray2Binary_BW`:
  /// - Array 0 carries black/white data, 1 = black (luminance ≤ 95),
  ///   0 = white.
  /// - Array 1 is a red-overlay plane exactly like the vendor builds one
  ///   for BW badges; it is never transferred to BW badges.
  ///
  /// Both arrays are stored in the vendor's vertically-flipped column-major
  /// order (8 columns per byte group, rows bottom-to-top, MSB = leftmost
  /// column of the group).
  List<Uint8List> gray2BinaryBW(img.Image image) {
    final height = image.height;

    return _packBits(image, height, (pixel) => _blackBit(pixel, 1));
  }

  /// Converts an image to two separate 1-bit-per-pixel byte arrays.
  ///
  /// Mirrors `ImgUtil.gray2Binary_BWR`:
  /// - Array 0 (plane 0) carries black/white data and is INVERTED relative
  ///   to the BW palette: 0 for dark pixels, 1 for light pixels
  ///   (1 = white!). Sending a BW-polarity array here produces a negative
  ///   image on the badge.
  /// - Array 1 (plane 1) contains the red overlay: 1 for red-like pixels
  ///   (R > 95 and G < 95 and B < 95), 0 for everything else.
  ///
  /// Both arrays use the same vertically-flipped column-major order as the
  /// BW palette.
  List<Uint8List> gray2BinaryBWR(img.Image image) {
    final height = image.height;

    // Plane 0 is inverted on BWR badges: 1 means white (see protocol doc).
    return _packBits(image, height, (pixel) => _blackBit(pixel, 0));
  }

  /// Converts an image to a 2-bit-per-pixel byte array for BWYR e-ink
  /// displays, mirroring `ImgUtil.gray2Binary_BWYR`.
  ///
  /// Each pixel maps to one of four values: 0 = black (luminance ≤ 95),
  /// 1 = white, 2 = yellow, 3 = red.
  ///
  /// Unlike the 1bpp modes the rows are NOT vertically flipped: the byte
  /// index is `(x ~/ 4) * height + y` and pixels are packed two bits at a
  /// time with the leftmost pixel of each group in the top bits.
  List<Uint8List> gray2BinaryBWYR(img.Image image) {
    final width = image.width;
    final height = image.height;

    final output = Uint8List(_packedSize(width * height, bitsPerPixel: 2));

    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final pixel = image.getPixel(x, y);

        var colorValue = _isBlack(pixel) ? 0 : 1;
        if (_isRed(pixel)) {
          colorValue = 3;
        } else if (isYellow(pixel)) {
          colorValue = 2;
        }

        final index = (x ~/ 4) * height + y;
        output[index] = (output[index] << 2) | colorValue;
      }
    }

    return [output];
  }

  /// Shared 1bpp packer. [blackBit] returns the bit value a pixel packs
  /// into plane 0 (plane 1 always packs the red bit), letting the BW and
  /// BWR palettes express their opposite black/white polarity.
  List<Uint8List> _packBits(
    img.Image image,
    int height,
    int Function(img.Pixel pixel) blackBit,
  ) {
    final width = image.width;
    final outputSize = _packedSize(width * height);
    final plane0 = Uint8List(outputSize);
    final plane1 = Uint8List(outputSize);

    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        final pixel = image.getPixel(x, y);

        final index = (x ~/ 8) * height + (height - 1 - y);
        plane0[index] = (plane0[index] << 1) | blackBit(pixel);
        plane1[index] = (plane1[index] << 1) | (_isRed(pixel) ? 1 : 0);
      }
    }

    return [plane0, plane1];
  }
}

/// Byte count needed to hold `pixels` bits (or 2-bit values when
/// [bitsPerPixel] is 2).
int _packedSize(int pixels, {int bitsPerPixel = 1}) {
  final bits = pixels * bitsPerPixel;
  return bits % 8 == 0 ? bits ~/ 8 : bits ~/ 8 + 1;
}

/// Luminance of a pixel using the vendor's channel weights and integer
/// truncation (a double comparison would deviate at threshold-boundary
/// pixels, e.g. r=95/g=96/b=95 is black for the vendor, white for `<=` on
/// a double).
int _luminance(img.Pixel pixel) =>
    ((pixel.r * 0.3) + (pixel.g * 0.59) + (pixel.b * 0.11)).toInt();

/// Vendor channel threshold for the luminance and each RGB channel.
const int _channelThreshold = 95;

bool _isBlack(img.Pixel pixel) => _luminance(pixel) <= _channelThreshold;

bool _isRed(img.Pixel pixel) =>
    pixel.r > _channelThreshold &&
    pixel.g < _channelThreshold &&
    pixel.b < _channelThreshold;

bool isYellow(img.Pixel pixel) =>
    pixel.r > _channelThreshold &&
    pixel.g > _channelThreshold &&
    pixel.b < _channelThreshold;

/// Bit plane 0 packs for a pixel: [ifBlack] is the bit used for dark
/// pixels (1 on BW badges, 0 on BWR badges, where plane 0 is inverted).
int _blackBit(img.Pixel pixel, int ifBlack) =>
    _isBlack(pixel) ? ifBlack : (ifBlack == 1 ? 0 : 1);

