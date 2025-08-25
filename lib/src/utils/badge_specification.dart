import 'package:flutter/foundation.dart';
import 'package:friends_badge/friends_badge.dart';

@internal
enum BadgeSpecification {
  size3_7inchPassiveBWRY(
    width: 240,
    height: 416,
    passive: true,
    colorPalette: ColorPalette.blackWhiteYellowRed,
  );

  final int height;
  final int width;
  final bool passive;
  final ColorPalette colorPalette;

  const BadgeSpecification({
    required this.width,
    required this.height,
    required this.passive,
    required this.colorPalette,
  });

  static BadgeSpecification fromSpecification(Uint8List value) {
    return switch (value.first) {
      0x04 => BadgeSpecification.size3_7inchPassiveBWRY,
      _ => throw UnsupportedError('Unsupported badge specification: $value'),
    };
  }
}

/// From the decompiled code of the official app (BadgeSpecificationUtils.java)
/// 
/// public static String getSpecificationByHardware(String hardware) {
///     switch (hardware) {
///         case "00"://Passive - BlackWhiteRed
///             return "无源-3.7-黑白红";
///         case "01"://Passive - BlackWhiteRedYellow
///             return "无源-3.7-黑白红黄";
///         case "02"://Passive - BlackWhite
///             return "无源-3.7-黑白";
///         case "03"://Active - BlackWhiteRed
///             return "有源-3.7-黑白红";
///         case "04"://Active - BlackWhiteRedYellow
///             return "有源-3.7-黑白红黄";
///         case "05"://Active - BlackWhite
///             return "有源-3.7-黑白";
///         case "06"://Passive - BlackWhiteRed
///             return "无源-2.6-黑白红";
///         case "07"://Passive - BlackWhiteRedYellow
///             return "无源-2.6-黑白红黄";
///         case "08"://Passive - BlackWhiteRed
///             return "无源-2.9-黑白红";
///         case "09"://Passive - BlackWhiteRedYellow
///             return "无源-2.9-黑白红黄";
///         default:
///             return "";
///     }
/// }
