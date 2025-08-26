import 'package:friends_badge/src/data/badge_image.dart';
import 'package:friends_badge/src/repositories/nfc_badge_repository.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:image/image.dart' as img;

class FriendsBadge {
  const FriendsBadge._();

  static const nfcBadgeRepository = NfcBadgeRepository();

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
