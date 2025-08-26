import 'package:friends_badge/src/data/badge_image.dart';
import 'package:friends_badge/src/repositories/nfc_badge_repository.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:image/image.dart' as img;

/// A utility class for interacting with Friends-of-Flutter e-paper badges.
///
/// Usage:
/// ```dart
/// final image = FriendsBadge.createBadgeImage(yourImage);
///
/// // To write the image to an NFC badge, you can use:
/// await FriendsBadge.writeBadge(image);
///
/// // Or, if you want to show a loading indicator while waiting for an NFC tap:
/// await WaitingForNfcTap.showLoading(
///   context: context,
///   job: FriendsBadge.writeOverNfc(image),
/// );
/// ```
class FriendsBadge {
  const FriendsBadge._();

  static const _nfcBadgeRepository = NfcBadgeRepository();
  
  /// Returns `true` if NFC badge writing is supported on the current platform.
  static bool get isNfcSupported => _nfcBadgeRepository.isSupported;

  static Stream<double> writeOverNfc(
    BadgeImage image, {
    DitherKernel kernel = img.DitherKernel.floydSteinberg,
    bool shouldCrop = true,
  }) => _nfcBadgeRepository.writeOverNfc(
    image,
    kernel: kernel,
    shouldCrop: shouldCrop,
  );

  /// Creates a [BadgeImage] from the given [image].
  ///
  /// The [image] is resized and cropped to fit the badge's specifications.
  /// By default, it uses the specifications for the 3.7-inch passive BWRY
  /// badge.
  static BadgeImage createBadgeImage(
    img.Image image, {
    BadgeSpecification badgeSpecification =
        BadgeSpecification.size3_7inchPassiveBWRY,
  }) {
    return BadgeImage.fromImage(
      image,
      badgeSpecification: badgeSpecification,
    );
  }
}
