import 'dart:async';

import 'package:friends_badge/src/repositories/badge_repository.dart';

class NfcBadgeRepository implements BadgeRepository {
  @override
  Stream<List<String>> scanForBleDevices() {
    // This repository does not handle BLE
    throw UnimplementedError('This repository does not handle BLE');
  }

  @override
  Future<void> writeOverBle(String address, List<int> data) {
    // This repository does not handle BLE
    throw UnimplementedError('This repository does not handle BLE');
  }

  @override
  Future<void> writeOverNfc(List<int> data) async {
    // TODO: Implement NFC writing
  }
}
