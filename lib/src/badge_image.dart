import 'dart:io';

import 'package:flutter/services.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:friends_badge/src/repositories/ble_badge_repository.dart';
import 'package:friends_badge/src/repositories/nfc_badge_repository.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:friends_badge/src/utils/preferred_write_technology.dart';
import 'package:image/image.dart' as img;

export 'package:image/image.dart' show DitherKernel;

/// Represents an image that can be displayed on an e-paper badge.
///
/// This class holds the image data in a format that is suitable for the badge.
/// It also provides methods for dithering and converting the image to a byte
/// stream that can be sent to the badge.
class BadgeImage {
  /// The scaled down image data. Not yet dithered or converted to binary.
  final img.Image _backingImage;

  /// A super scaled down version of the backing image for quick previews.
  final img.Image _peekBackingImage;

  /// Creates a [BadgeImage] from the given [image].
  /// The image is resized and cropped to fit the badge's specifications.
  factory BadgeImage(
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

  const BadgeImage._(this._backingImage, this._peekBackingImage);

  static const _imageConverter = ImageConverter();

  static const _badgeSpecification = BadgeSpecification.size3_7inchPassiveBWRY;

  static const _nfcBadgeRepository = NfcBadgeRepository();
  static const _bleBadgeRepository = BleBadgeRepository();

  /// Returns `true` if NFC badge writing is supported on the current platform.
  static bool get isNfcSupported => _nfcBadgeRepository.isSupported;

  static List<img.DitherKernel> allSupportedKernels = img.DitherKernel.values;

  /// Writes this [BadgeImage] to the badge, using NFC and BLE.
  Stream<double> writeToBadge({
    DitherKernel kernel = img.DitherKernel.floydSteinberg,
    PreferredWriteTechnology preferredTechnology = PreferredWriteTechnology.ble,
    bool shouldCrop = true,
  }) async* {
    if (Platform.isIOS) {
      HapticFeedback.mediumImpact();
    }
    try {
      if (preferredTechnology == PreferredWriteTechnology.ble &&
          await _bleBadgeRepository.deviceSupportsBle) {
        await _bleBadgeRepository.turnOn();
        final badgeId = await _nfcBadgeRepository.getNfcTag();
        yield* _bleBadgeRepository.writeOverBle(
          this,
          badgeId: badgeId,
          kernel: kernel,
          shouldCrop: shouldCrop,
        );
        return;
      }
    } on Object catch (_) {}
    yield* _nfcBadgeRepository.writeOverNfc(
      this,
      kernel: kernel,
      shouldCrop: shouldCrop,
    );
  }

  /// Returns a dithered version of the image using the given [kernel].
  img.Image getDitheredImage(img.DitherKernel kernel) {
    return _imageConverter.dither(
      img.Image.from(_backingImage),
      palette: _badgeSpecification.colorPalette,
      kernel: kernel,
    );
  }

  /// Returns the image as a PNG-encoded byte list.
  ///
  /// If a [kernel] is provided, the image is dithered before being encoded.
  Uint8List getImageBytes([img.DitherKernel? kernel]) {
    if (kernel == null) {
      return Uint8List.fromList(img.encodePng(_backingImage));
    }
    return Uint8List.fromList(img.encodePng(getDitheredImage(kernel)));
  }

  /// Returns a smaller "peek" image as a PNG-encoded byte list.
  ///
  /// This is useful for displaying a preview of the image in the UI.
  /// If a [kernel] is provided, the image is dithered before being encoded.
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
