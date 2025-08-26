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
/// await WaitingForNfcTap.showLoading(
///   context: context,
///   job: FriendsBadge.nfcBadgeRepository.writeOverNfc(
///     image,
///   ),
/// );
/// ```
class FriendsBadge {
  const FriendsBadge._();

  static const nfcBadgeRepository = NfcBadgeRepository();

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
