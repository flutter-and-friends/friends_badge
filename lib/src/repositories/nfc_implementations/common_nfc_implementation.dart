import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/repositories/ble_badge_repository.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:image/image.dart' as img;
import 'package:nfc_manager/nfc_manager.dart';

abstract class NfcWriter {
  Future<Uint8List> writeBytes(Uint8List bytes);
}

abstract class CommonNfcImplementation {
  const CommonNfcImplementation();

  NfcWriter initNfcWriter(NfcTag tag);

  BadgeId getBadgeIdFromTag(NfcTag tag);

  Future<void> writeOverNfc(
    NfcTag tag,
    img.Image image,
    StreamController<double> controller, {
    required bool shouldCrop,
  }) async {
    final nfc = initNfcWriter(tag);

    // 1. Get badge specification from the device
    final badge = await nfc
        .writeBytes(
          Uint8List.fromList([-48, -47, 3, 0, 1]),
        )
        .then(BadgeSpecification.fromSpecification);

    final data = const ImageConverter().convertImage(
      image,
      badge: badge,
      shouldCrop: shouldCrop,
    );

    final blackAndWhite = data[0];
    final redOrYellow = data.elementAtOrNull(1) ?? Uint8List(0);

    final totalChunks = blackAndWhite.length + redOrYellow.length;

    // 2. Send black/white data
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
      await nfc.writeBytes(Uint8List.fromList(command));
      totalBytesSent += command.length;
      debugPrint(
        'Sending chunk ${i + 1}/${blackAndWhite.length} '
        '(${chunk.length} bytes)',
      );
      controller.add((i + chunk.length) / totalChunks);
    }

    // 2. Send red/yellow data
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
      await nfc.writeBytes(Uint8List.fromList(command));
      totalBytesSent += command.length;
      debugPrint(
        'Sending chunk ${i + 1}/${redOrYellow.length} '
        '(${chunk.length} bytes)',
      );
      controller.add(
        (blackAndWhite.length + i + chunk.length) / totalChunks,
      );
    }

    // 3. Terminate connection
    await nfc.writeBytes(
      Uint8List.fromList([0xd0, 0xd1, 0x03, 0x00, 0x00]),
    );
    debugPrint('Total bytes sent: $totalBytesSent');
  }
}
