import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:image/image.dart' as img;
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
  Future<void> writeOverNfc(
    img.Image image, [
    ColorPalette colorPalette = ColorPalette.blackWhiteRed,
  ]) async {
    final data = ImageConverter().convertImage(image, colorPalette);
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

          // 1. Handshake
          final handshakeResponse = await isoDep.transceive(
            Uint8List.fromList([0xd0, 0xd1, 0x00, 0x00, 0x00]),
          );

          if (listEquals(handshakeResponse, Uint8List.fromList([0x90, 0x00]))) {
            debugPrint('Handshake successful');
          } else {
            completer.completeError(
              Exception('Handshake failed'),
              StackTrace.current,
            );
            return;
          }
          
          // final dataSet1 = data[0];
          //
          // const chunkSize = 248;
          // var totalBytesSent = 0;
          //
          // final numChunks1 = (dataSet1.length / chunkSize).ceil();
          //
          // for (var i = 0; i < numChunks1; i++) {
          //   final isLastChunk = (i == numChunks1 - 1);
          //   final currentChunkSize = isLastChunk
          //       ? dataSet1.length % chunkSize
          //       : chunkSize;
          //
          //   final command = Uint8List(5 + currentChunkSize);
          //   command[0] = 0xD0;
          //   command[1] = 0xD1;
          //   command[2] = isLastChunk
          //       ? 0x02
          //       : 0x01; // Data type (0x01 for more, 0x02 for last)
          //   command[3] = 0x00; // Unused
          //   command[4] = currentChunkSize;
          //
          //   // Copy the data chunk into the command buffer.
          //   final sourceOffset = i * chunkSize;
          //   for (var j = 0; j < currentChunkSize; j++) {
          //     command[j + 5] = dataSet1[sourceOffset + j];
          //   }
          //
          //   await isoDep.transceive(command);
          //   totalBytesSent += command.length;
          //   debugPrint(
          //     'Sending chunk ${i + 1}/$numChunks1 (${command.length} bytes)',
          //   );
          //   // onProcessUpdated(totalBytesSent);
          // }
          //
          // // Second data set: writeImgData[1]
          // final dataSet2 = data[1];
          // final numChunks2 = (dataSet2.length / chunkSize).ceil();
          //
          // for (var i = 0; i < numChunks2; i++) {
          //   final isLastChunk = (i == numChunks2 - 1);
          //   final currentChunkSize = isLastChunk
          //       ? dataSet2.length % chunkSize
          //       : chunkSize;
          //
          //   final command = Uint8List(5 + currentChunkSize);
          //   command[0] = 0xD0;
          //   command[1] = 0xD1;
          //   command[2] = isLastChunk
          //       ? 0x05
          //       : 0x04; // Data type (0x04 for more, 0x05 for last)
          //   command[3] = 0x00; // Unused
          //   command[4] = currentChunkSize;
          //
          //   // Copy the data chunk into the command buffer.
          //   final sourceOffset = i * chunkSize;
          //   for (var j = 0; j < currentChunkSize; j++) {
          //     command[j + 5] = dataSet2[sourceOffset + j];
          //   }
          //
          //   await isoDep.transceive(command);
          //   totalBytesSent += command.length;
          //   debugPrint(
          //     'Sending chunk ${i + 1}/$numChunks2 (${command.length} bytes)',
          //   );
          //   // onProcessUpdated(totalBytesSent);
          // }

          // 2. Split data into black/white and red/yellow planes
          // final planeSize = data.length ~/ 2;
          final blackAndWhite = data[0];
          final redOrYellow = data[1];

          // 3. Send black/white data
          const chunkSize = 248;
          for (var i = 0; i < blackAndWhite.length; i += chunkSize) {
            final chunk = blackAndWhite.sublist(
              i,
              i + chunkSize > blackAndWhite.length
                  ? blackAndWhite.length
                  : i + chunkSize,
            );
            final isLastChunk = i + chunkSize >= blackAndWhite.length;
            final command = [
              0xd0,
              0xd1,
              isLastChunk ? 0x02 : 0x01,
              0x00,
              chunk.length,
              ...chunk,
            ];
            debugPrint(
              'Sending chunk ${i + 1}/${blackAndWhite.length} '
              '(${chunk.length} bytes)',
            );
            await isoDep.transceive(Uint8List.fromList(command));
          }

          // 4. Send red/yellow data
          // for (var i = 0; i < redOrYellow.length; i += chunkSize) {
          //   final chunk = redOrYellow.sublist(
          //     i,
          //     i + chunkSize > redOrYellow.length
          //         ? redOrYellow.length
          //         : i + chunkSize,
          //   );
          //   final isLastChunk = i + chunkSize >= redOrYellow.length;
          //   final command = [
          //     0xd0,
          //     0xd1,
          //     isLastChunk ? 0x05 : 0x04,
          //     0x00,
          //     chunk.length,
          //     ...chunk,
          //   ];
          //   debugPrint(
          //     'Sending chunk ${i + 1}/${redOrYellow.length} '
          //     '(${chunk.length} bytes)',
          //   );
          //   await isoDep.transceive(Uint8List.fromList(command));
          // }

          // 5. Terminate connection
          await Future.delayed(const Duration(milliseconds: 50));
          await isoDep.transceive(
            Uint8List.fromList([0xd0, 0xd1, 0x03, 0x00, 0x00]),
          );
          // debugPrint('Total bytes sent: $totalBytesSent');

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
