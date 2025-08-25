import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:image/image.dart' as img;
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/nfc_manager_android.dart';

class NfcBadgeRepository {
  const NfcBadgeRepository();

  Future<void> writeOverNfc(
    img.Image image, {
    bool shouldCrop = true,
  }) async {
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

          // Get badge specification from the device
          final badge = await isoDep
              .transceive(
                Uint8List.fromList([-48, -47, 3, 0, 1]),
              )
              .then(BadgeSpecification.fromSpecification);

          final data = const ImageConverter().convertImage(
            image,
            badge: badge,
            shouldCrop: shouldCrop,
          );

          // 1. Handshake with passive screen
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

          final blackAndWhite = data[0];
          final redOrYellow = data.elementAtOrNull(1) ?? Uint8List(0);

          // 3. Send black/white data
          const chunkSize = 248;
          var totalBytesSent = 0;
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
              if (isLastChunk) 0x02 else 0x01,
              0x00,
              chunk.length,
              ...chunk,
            ];
            await isoDep.transceive(Uint8List.fromList(command));
            totalBytesSent += command.length;
            debugPrint(
              'Sending chunk ${i + 1}/${blackAndWhite.length} '
              '(${chunk.length} bytes)',
            );
          }

          // 4. Send red/yellow data
          for (var i = 0; i < redOrYellow.length; i += chunkSize) {
            final chunk = redOrYellow.sublist(
              i,
              i + chunkSize > redOrYellow.length
                  ? redOrYellow.length
                  : i + chunkSize,
            );
            final isLastChunk = i + chunkSize >= redOrYellow.length;
            final command = [
              0xd0,
              0xd1,
              if (isLastChunk) 0x05 else 0x04,
              0x00,
              chunk.length,
              ...chunk,
            ];
            await isoDep.transceive(Uint8List.fromList(command));
            totalBytesSent += command.length;
            debugPrint(
              'Sending chunk ${i + 1}/${redOrYellow.length} '
              '(${chunk.length} bytes)',
            );
          }

          // 5. Terminate connection
          await Future.delayed(const Duration(milliseconds: 50));
          await isoDep.transceive(
            Uint8List.fromList([0xd0, 0xd1, 0x03, 0x00, 0x00]),
          );
          debugPrint('Total bytes sent: $totalBytesSent');

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

  img.Image? createPreviewImage(img.Image e) {
    return const ImageConverter().prepareImage(
      e,
      badge: BadgeSpecification.size3_7inchPassiveBWRY,
    );
  }
}
