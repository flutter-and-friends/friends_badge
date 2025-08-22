import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/repositories/badge_repository.dart';
import 'package:nfc_manager/nfc_manager.dart';

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
    final completer = Completer<void>();

    NfcManager.instance.startSession(
      onDiscovered: (NfcTag tag) async {
        try {
          final nfcA = NfcA.from(tag);
          if (nfcA == null) {
            completer.completeError(Exception('Tag is not NfcA compatible'));
            return;
          }

          // 1. Send "Set Status" command with status 0x0000 (SUCCESS).
          await nfcA.transceive(Uint8List.fromList([0xa2, 0x06, 0x00, 0x00]));

          // 2. Send "Read Status" command.
          final status = await nfcA.transceive(Uint8List.fromList([0x30, 0x06]));
          // TODO: Check status

          // 3. Send image data in 4-byte chunks.
          const chunkSize = 4;
          for (var i = 0; i < data.length; i += chunkSize) {
            final chunk = data.sublist(i, i + chunkSize > data.length ? data.length : i + chunkSize);
            final address = i ~/ chunkSize;
            final command = [0xa2, address, ...chunk];
            await nfcA.transceive(Uint8List.fromList(command));
          }

          // 4. Send "Set Status" command with status 0x0200 (S2).
          await nfcA.transceive(Uint8List.fromList([0xa2, 0x06, 0x02, 0x00]));

          completer.complete();
        } catch (e) {
          completer.completeError(e);
        } finally {
          NfcManager.instance.stopSession();
        }
      },
    );

    return completer.future;
  }
}
