import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:image/image.dart' as img;
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/nfc_manager_android.dart';

/// Repository for writing images to NFC badges.
///
/// Usage:
/// ```dart
/// final repository = FriendsBadge.nfcBadgeRepository;
///
/// final image = img.decodeImage(yourImageBytes);
/// if (image != null) {
///   repository
///       .writeOverNfc(image)
///       .listen(
///         (progress) {
///           // Update progress UI
///         },
///         onError: (error) {
///           // Handle error
///         },
///         onDone: () {
///           // Write operation completed
///         },
///       );
/// }
/// ```
class NfcBadgeRepository {
  const NfcBadgeRepository();

  /// Whether NFC badge writing is supported on the current platform.
  /// Currently, only Android is supported.
  ///
  /// On iOS, NFC is available but writing to the badge is not implemented yet.
  ///
  /// Make sure to check this property before attempting to write.
  ///
  /// If false, calling [writeOverNfc] will result in an error.
  bool get isSupported => Platform.isAndroid;

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
                  await _writeOverNfcAndroid(
                    tag,
                    image.getDitheredImage(kernel),
                    shouldCrop,
                    controller,
                  );
                } else if (Platform.isIOS) {
                  await _writeOverNfcIos(
                    tag,
                    image.getDitheredImage(kernel),
                    shouldCrop,
                    controller,
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

  Future<void> _writeOverNfcAndroid(
    NfcTag tag,
    img.Image image,
    bool shouldCrop,
    StreamController<double> controller,
  ) async {
    // Supported protocols on Android:
    // android.nfc.tech.IsoDep
    // android.nfc.tech.NfcA
    // android.nfc.tech.Ndef
    final isoDep = IsoDepAndroid.from(tag);
    if (isoDep == null) {
      controller.addError(
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
      controller.addError(
        Exception('Handshake failed'),
        StackTrace.current,
      );
      return;
    }

    final blackAndWhite = data[0];
    final redOrYellow = data.elementAtOrNull(1) ?? Uint8List(0);

    final totalChunks = blackAndWhite.length + redOrYellow.length;

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
      controller.add((i + chunk.length) / totalChunks);
    }

    // 4. Send red/yellow data
    for (var i = 0; i < redOrYellow.length; i += chunkSize) {
      final chunk = redOrYellow.sublist(
        i,
        i + chunkSize > redOrYellow.length ? redOrYellow.length : i + chunkSize,
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
      controller.add(
        (blackAndWhite.length + i + chunk.length) / totalChunks,
      );
    }

    // 5. Terminate connection
    await Future.delayed(const Duration(milliseconds: 50));
    await isoDep.transceive(
      Uint8List.fromList([0xd0, 0xd1, 0x03, 0x00, 0x00]),
    );
    debugPrint('Total bytes sent: $totalBytesSent');
  }

  Future<void> _writeOverNfcIos(
    NfcTag tag,
    img.Image image,
    bool shouldCrop,
    StreamController<double> controller,
  ) async {
    // @TODO: Try using this for iOS: NFCISO7816Tag
    throw UnimplementedError(
      'iOS support is not implemented yet',
    );
  }
}
