import 'package:flutter/foundation.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:image/image.dart' as img;

export 'package:image/image.dart' show DitherKernel;

class BadgeImage {
  /// The scaled down image data. Not yet dithered or converted to binary.
  final img.Image _backingImage;

  /// A super scaled down version of the backing image for quick previews.
  final img.Image _peekBackingImage;

  const BadgeImage._(this._backingImage, this._peekBackingImage);

  static const _imageConverter = ImageConverter();

  static const _badgeSpecification = BadgeSpecification.size3_7inchPassiveBWRY;

  /// Creates a [BadgeImage] from the given [image].
  /// The image is resized and cropped to fit the badge's specifications.
  ///
  /// This is not supposed to be used directly. Use
  /// [FriendsBadge.createBadgeImage] instead.
  @internal
  factory BadgeImage.fromImage(
    img.Image image, {
    BadgeSpecification badgeSpecification = _badgeSpecification,
  }) {
    final resizedImage = _imageConverter.resizeImage(
      image,
      badgeSpecification,
      crop: true,
    );
    final peekImage = img.copyResize(resizedImage, height: 100);
    return BadgeImage._(resizedImage, peekImage);
  }

  static List<img.DitherKernel> allSupportedKernels = img.DitherKernel.values;

  img.Image getDitheredImage(img.DitherKernel kernel) {
    return _imageConverter.dither(
      img.Image.from(_backingImage),
      palette: _badgeSpecification.colorPalette,
      kernel: kernel,
    );
  }

  Uint8List getImageBytes([img.DitherKernel? kernel]) {
    if (kernel == null) {
      return Uint8List.fromList(img.encodePng(_backingImage));
    }
    return Uint8List.fromList(img.encodePng(getDitheredImage(kernel)));
  }

  Uint8List getPeekImageBytes([img.DitherKernel? kernel]) {
    if (kernel == null) {
      return Uint8List.fromList(img.encodePng(_peekBackingImage));
    }
    final ditheredImage = _imageConverter.dither(
      img.Image.from(_peekBackingImage),
      palette: _badgeSpecification.colorPalette,
      kernel: kernel,
    );
    return Uint8List.fromList(img.encodePng(ditheredImage));
  }

  /// Creates a preview image suitable for display on the badge.
  /// The image is processed to match the badge's color capabilities and
  /// aspect ratio using the specifications from
  /// `BadgeSpecification.size3_7inchPassiveBWRY`.
  img.Image? createPreviewImage({
    img.DitherKernel kernel = img.DitherKernel.atkinson,
  }) {
    return const ImageConverter().dither(
      _backingImage,
      palette: _badgeSpecification.colorPalette,
      kernel: kernel,
    );
  }
}
