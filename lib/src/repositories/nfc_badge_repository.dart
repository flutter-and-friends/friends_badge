import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:friends_badge/src/repositories/nfc_implementations/android_nfc_implementation.dart';
import 'package:friends_badge/src/repositories/nfc_implementations/ios_nfc_implementation.dart';
import 'package:image/image.dart' as img;
import 'package:nfc_manager/nfc_manager.dart';

/// Repository for writing images to NFC badges.
class NfcBadgeRepository {
  const NfcBadgeRepository();

  /// Returns `true` if NFC badge writing is supported on the current platform.
  /// Currently, only Android is supported.
  ///
  /// On iOS, NFC is available but writing to the badge is not implemented yet.
  ///
  /// Make sure to check this property before attempting to write.
  ///
  /// If this returns `false`, calling [writeOverNfc] will result in an error.
  bool get isSupported => Platform.isAndroid || Platform.isIOS;

  /// Writes the given [image] to an NFC badge.
  /// If [shouldCrop] is true, the image will be cropped to fit the badge's
  /// aspect ratio.
  ///
  /// Returns a [Stream] that completes when the write operation is done or
  /// fails.
  ///
  /// The stream emits progress updates as double values between 0.0 and 1.0.
  ///
  /// Make sure to call this method in a context where NFC is available and
  /// permissions are granted.
  Stream<double> writeOverNfc(
    BadgeImage image, {
    DitherKernel kernel = img.DitherKernel.floydSteinberg,
    bool shouldCrop = true,
  }) {
    final controller = StreamController<double>();

    Future(() async {
      final isNfcAvailable = await NfcManager.instance.isAvailable();
      if (!isNfcAvailable) {
        controller.addError(
          Exception('NFC is not available on this device'),
          StackTrace.current,
        );
        controller.close();
        return controller.stream;
      }

      NfcManager.instance
          .startSession(
            alertMessageIos: 'Hold your device near the NFC badge',
            pollingOptions: {
              NfcPollingOption.iso14443,
            },
            onDiscovered: (tag) async {
              try {
                if (Platform.isAndroid) {
                  await const AndroidNfcImplementation().writeOverNfc(
                    tag,
                    image.getDitheredImage(kernel),
                    controller,
                    shouldCrop: shouldCrop,
                  );
                } else if (Platform.isIOS) {
                  await const IosNfcImplementation().writeOverNfc(
                    tag,
                    image.getDitheredImage(kernel),
                    controller,
                    shouldCrop: shouldCrop,
                  );
                } else {
                  throw UnsupportedError('Unsupported platform');
                }

                // ignore: avoid_catches_without_on_clauses
              } catch (e, stackTrace) {
                controller.addError(e, stackTrace);
              } finally {
                NfcManager.instance.stopSession();
                controller.close();
              }
            },
          )
          .onError((error, stackTrace) {
            debugPrint('NFC session error: $error');
            debugPrintStack(stackTrace: stackTrace);
            controller.addError(
              error ?? 'Something went wrong when setting up the NfcManager',
              stackTrace,
            );
            controller.close();
          });
    });

    return controller.stream;
  }
}
