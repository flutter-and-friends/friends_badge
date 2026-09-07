import 'dart:async';
import 'dart:io';
import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:friends_badge/src/badge_image.dart';
import 'package:friends_badge/src/utils/badge_specification.dart';
import 'package:friends_badge/src/utils/ble_protocol.dart';
import 'package:friends_badge/src/utils/crc32.dart';
import 'package:friends_badge/src/utils/hex.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:image/image.dart' as img;

extension type BadgeId(Uint8List bytes) {}

class BleBadgeRepository {
  const BleBadgeRepository();

  static final Guid serviceUuid = Guid('6e400001-b5a3-f393-e0a9-e50e24dcca9e');
  static final Guid writeCharacteristicUuid = Guid(
    '6e400002-b5a3-f393-e0a9-e50e24dcca9e',
  );
  static final Guid notifyCharacteristicUuid = Guid(
    '6e400003-b5a3-f393-e0a9-e50e24dcca9e',
  );

  Future<bool> get deviceSupportsBle => FlutterBluePlus.isSupported;

  Stream<List<String>> scanForBleDevices() {
    final completer = StreamController<List<String>>();

    void onCancel() {
      FlutterBluePlus.stopScan();
      completer.close();
    }

    completer.onCancel = onCancel;

    FlutterBluePlus.adapterState.listen((state) {
      if (state == BluetoothAdapterState.on) {
        FlutterBluePlus.startScan(withServices: [serviceUuid]);
      } else {
        completer.addError(Exception('Bluetooth is not available'));
      }
    });

    FlutterBluePlus.scanResults.listen((results) {
      final deviceNames = results
          .where((result) => result.device.platformName.isNotEmpty)
          .map((result) => result.device.platformName)
          .toList();
      completer.add(deviceNames);
    });

    return completer.stream;
  }

  Stream<double> writeOverBle(
    BadgeImage image, {
    required BadgeId badgeId,
    required BadgeSpecification badgeSpec,
    img.DitherKernel kernel = img.DitherKernel.floydSteinberg,
    bool shouldCrop = true,
  }) async* {
    await FlutterBluePlus.startScan(
      timeout: const Duration(seconds: 10),
    );

    final badge = (await FlutterBluePlus.onScanResults
        .map((devices) {
          return devices.firstWhereOrNull((device) {
            return device.device.platformName == 'TAG_SR9837' &&
                const ListEquality().equals(
                  device.advertisementData.manufacturerData[89],
                  badgeId.bytes,
                );
          });
        })
        .firstWhere((device) => device != null)
        .timeout(
          const Duration(seconds: 10),
          onTimeout: () => throw Exception(
            'No matching badge found during the BLE scan. Check that the '
            'badge is powered on and that the badge id was read over NFC '
            'from the same badge.',
          ),
        ))!;
    await FlutterBluePlus.stopScan();
    await badge.device.connect();

    try {
      final services = await badge.device.discoverServices();
      final service = services.firstWhere((s) => s.uuid == serviceUuid);
      final characteristic = service.characteristics.firstWhere(
        (c) => c.uuid == writeCharacteristicUuid,
      );
      final notifyCharacteristic = service.characteristics.firstWhere(
        (c) => c.uuid == notifyCharacteristicUuid,
      );

      // Image packets are single GATT writes of up to 227 bytes. At the
      // default MTU of 23 the stack rejects anything longer, so negotiate
      // 247 and verify the result before touching the image path.
      if (!kIsWeb && Platform.isAndroid) {
        final mtu = await badge.device.requestMtu(badgeMtu);
        debugPrint('Negotiated MTU: $mtu');
        if (mtu < badgeMinMtuForImageTransfer) {
          throw Exception(
            'MTU $mtu is too small for badge image packets '
            '(need >= $badgeMinMtuForImageTransfer).',
          );
        }
      }

      // Subscribe before enabling notifications so the start-ACK cannot be
      // missed, then enable and wait out the vendor's pre-notify pause.
      final notificationQueue = StreamQueue(
        notifyCharacteristic.onValueReceived,
      );
      await Future<void>.delayed(preNotifyDelay);
      await notifyCharacteristic.setNotifyValue(true);

      try {
        final imagePlanes = const ImageConverter()
            .convertImage(
              image.getDitheredImage(kernel),
              badge: badgeSpec,
              shouldCrop: shouldCrop,
            )
            .take(expectedPlaneCount(badgeSpec.colorPalette))
            .toList(growable: false);
        final chunkSize = chunkSizeFor(badgeSpec.colorPalette);

        // CRC mismatch restarts the whole start -> data -> CRC sequence,
        // like the vendor app. maxTransferAttempts includes that first run.
        for (var attempt = 1; attempt <= maxTransferAttempts; attempt++) {
          if (attempt > 1) {
            debugPrint(
              'CRC mismatch, restarting transfer '
              '(attempt $attempt/$maxTransferAttempts)',
            );
          }

          await _startTransfer(characteristic, notificationQueue);

          var totalBytes = 0;
          for (final plane in imagePlanes) {
            totalBytes += plane.length;
          }

          var sentBytes = 0;
          for (final (planeIndex, plane) in imagePlanes.indexed) {
            final chunks = chunkImagePlane(plane, chunkSize);
            for (final chunk in chunks) {
              final packet = buildImageDataChunkFrame(
                planeIndex: planeIndex,
                offset: chunk.offset,
                payload: chunk.payload,
              );
              await _writeWithSingleRetry(characteristic, packet);
              sentBytes += chunk.payload.length;
              yield sentBytes / totalBytes;
              // Image packets are the only paced writes with a trailing
              // pause; the pre-write pause lives in _writeGattPacket.
              await Future<void>.delayed(postWriteDelay);
            }
            debugPrint(
              'Plane $planeIndex transferred '
              '(${chunks.length} packets of $chunkSize bytes)',
            );
          }

          final badgeCrc = await _queryCrc(characteristic, notificationQueue);
          final expectedCrc = Crc32.calculate(imagePlanes);
          debugPrint(
            'CRC: badge 0x${badgeCrc.toRadixString(16)}, '
            'computed 0x${expectedCrc.toRadixString(16)}',
          );
          if (badgeCrc == expectedCrc) {
            await _refreshAndFinish(characteristic, notificationQueue);
            return;
          }
        }

        throw Exception(
          'Badge CRC mismatch after $maxTransferAttempts attempts; '
          'the transferred image would be corrupt.',
        );
      } finally {
        await notificationQueue.cancel();
      }
    } finally {
      await badge.device.disconnect();
    }
  }

  /// Sends `A5 00 11 11` after the vendor's start delay and waits for the
  /// ACK. Any status other than `responseOkStatus` aborts the transfer.
  Future<void> _startTransfer(
    BluetoothCharacteristic writeCharacteristic,
    StreamQueue<List<int>> notificationQueue,
  ) async {
    await Future<void>.delayed(startCommandDelay);
    final startFrame = buildCommandFrame(BleCommand.start);
    await _writeGattPacket(writeCharacteristic, startFrame);

    final frame = await _nextResponseFrame(
      notificationQueue,
      BleCommand.start,
    );
    final response = parseBadgeResponse(frame);
    if (response is! StartAck) {
      throw Exception('Malformed start-ACK: ${Hex.encode(frame)}');
    }
    if (response.status != responseOkStatus) {
      throw Exception(
        'Badge rejected the transfer: start-ACK status '
        '0x${response.status.toRadixString(16)} (vendor treats any non-zero '
        'status as "unknown card"; the badge expects an NFC tap before '
        'accepting a BLE transfer).',
      );
    }
  }

  /// Sends `A5 00 13 13` and parses the badge's CRC-32 (big-endian).
  Future<int> _queryCrc(
    BluetoothCharacteristic writeCharacteristic,
    StreamQueue<List<int>> notificationQueue,
  ) async {
    await _writeGattPacket(
      writeCharacteristic,
      buildCommandFrame(BleCommand.crcQuery),
    );

    final frame = await _nextResponseFrame(
      notificationQueue,
      BleCommand.crcQuery,
    );
    final response = parseBadgeResponse(frame);
    if (response is! CrcResponse) {
      throw Exception('Malformed CRC response: ${Hex.encode(frame)}');
    }
    return response.crc32;
  }

  /// Sends `A5 00 14 14`, waits for the `0x14` echo, then waits out the
  /// vendor's settle delay before the caller disconnects.
  Future<void> _refreshAndFinish(
    BluetoothCharacteristic writeCharacteristic,
    StreamQueue<List<int>> notificationQueue,
  ) async {
    await _writeGattPacket(
      writeCharacteristic,
      buildCommandFrame(BleCommand.refresh),
    );
    await _nextResponseFrame(notificationQueue, BleCommand.refresh);
    await Future<void>.delayed(postRefreshDelay);
  }

  /// Awaits the next notification whose command byte matches [command],
  /// skipping unrelated frames.
  Future<List<int>> _nextResponseFrame(
    StreamQueue<List<int>> notificationQueue,
    BleCommand command,
  ) async {
    while (true) {
      final frame = await notificationQueue.next.timeout(
        responseTimeout,
        onTimeout: () => throw TimeoutException(
          'No ${command.name} response within ${responseTimeout.inSeconds}s',
        ),
      );
      if (frame.length >= 4 &&
          frame[0] == frameStartByte &&
          frame[2] == command.value) {
        return frame;
      }
      debugPrint('Ignoring notification frame: ${Hex.encode(frame)}');
    }
  }

  /// Writes a packet, retrying once on failure (vendor picks up failed
  /// writes and resends them a single time).
  Future<void> _writeWithSingleRetry(
    BluetoothCharacteristic writeCharacteristic,
    List<int> packet,
  ) async {
    for (var attempt = 1; attempt <= maxWriteAttemptsPerPacket; attempt++) {
      try {
        await _writeGattPacket(writeCharacteristic, packet);
        return;
      } on Exception catch (e) {
        if (attempt == maxWriteAttemptsPerPacket) {
          rethrow;
        }
        debugPrint('Write failed, retrying once: $e');
      }
    }
  }

  /// Every GATT write is preceded by the vendor's short pause.
  Future<void> _writeGattPacket(
    BluetoothCharacteristic writeCharacteristic,
    List<int> packet,
  ) async {
    await Future<void>.delayed(preWriteDelay);
    await writeCharacteristic.write(packet);
  }

  Future<void> turnOn() {
    return FlutterBluePlus.turnOn();
  }
}
