import 'package:friends_badge/friends_badge.dart';
import 'package:image/image.dart' as img;

abstract class BadgeRepository {
  Future<void> writeOverBle(String address, List<int> data);

  Future<void> writeOverNfc(
    img.Image image, [
    ColorPalette colorPalette = ColorPalette.blackWhiteRed,
  ]);

  Stream<List<String>> scanForBleDevices();
}
