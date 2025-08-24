import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/repositories/badge_repository.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/nfc_manager_android.dart';

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
      pollingOptions: {
        NfcPollingOption.iso14443,
      },
      onDiscovered: (NfcTag tag) async {
        try {
          final isoDep = IsoDepAndroid.from(tag);
          if (isoDep == null) {
            completer.completeError(
              Exception('Tag is not IsoDep compatible'),
              StackTrace.current,
            );
            return;
          }

          // The passive badge protocol is not well documented, so this is a
          // best guess based on the decompiled code.
          // 1. It seems to send the data in larger chunks
          const chunkSize = 245;
          final chunkedData = <List<int>>[];
          for (var i = 0; i < data.length; i += chunkSize) {
            chunkedData.add(
              data.sublist(
                i,
                i + chunkSize > data.length ? data.length : i + chunkSize,
              ),
            );
          }

          // 2. Handshake
          await isoDep.transceive(
            Uint8List.fromList([0xc0, 0xc1, 0x00, 0x00, 0x00]),
          );

          // 3. Send image data
          for (var i = 0; i < chunkedData.length; i++) {
            final chunk = chunkedData[i];
            final isLastChunk = i == chunkedData.length - 1;
            final command = [
              0xd0,
              0xd1,
              if (isLastChunk) 0x02 else 0x01,
              0x00,
              chunk.length,
              ...chunk,
            ];
            await isoDep.transceive(Uint8List.fromList(command));
          }

          // 4. Terminate connection
          await isoDep.transceive(
            Uint8List.fromList([0xd0, 0xd1, 0x03, 0x00, 0x00]),
          );

          completer.complete();
        } catch (e, stackTrace) {
          completer.completeError(e, stackTrace);
        } finally {
          NfcManager.instance.stopSession();
        }
      },
    );

    return completer.future;
  }
}
