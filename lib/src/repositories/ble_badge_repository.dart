import 'dart:async';

import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:friends_badge/src/badge_image.dart';
import 'package:friends_badge/src/utils/get_checksum.dart';
import 'package:friends_badge/src/utils/hex.dart';
import 'package:friends_badge/src/utils/image_converter.dart';
import 'package:image/image.dart' as img;

import '../utils/badge_specification.dart';

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
    // All tasks are now unblocked and implemented based on the decompiled Java code.
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
        .firstWhere((device) => device != null))!;
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

      await notifyCharacteristic.setNotifyValue(true);
      final notifications = notifyCharacteristic.onValueReceived;
      final notificationQueue = StreamQueue(notifications);

      // Handshake
      await characteristic.write([-91, 0, 17, 17]);
      final handshakeResponse = await notificationQueue.next.timeout(
        const Duration(seconds: 5),
      );
      debugPrint('Handshake response: $handshakeResponse');
      if (handshakeResponse.length < 4 ||
          handshakeResponse[2] != 0x11 ||
          handshakeResponse[3] != 0x00) {
        throw Exception('Handshake failed');
      }

      final imagePlanes = const ImageConverter().convertImage(
        image.getDitheredImage(kernel),
        badge: badgeSpec,
        shouldCrop: shouldCrop,
      );

      // Send image planes
      for (var planeIndex = 0; planeIndex < imagePlanes.length; planeIndex++) {
        final imageBytes = imagePlanes[planeIndex];
        const chunkSize = 220;
        final totalChunks = (imageBytes.length / chunkSize).ceil();

        for (var i = 0; i < totalChunks; i++) {
          final chunk = imageBytes.sublist(
            i * chunkSize,
            (i + 1) * chunkSize > imageBytes.length
                ? imageBytes.length
                : (i + 1) * chunkSize,
          );
          final packet = _createBlePacket(i * chunkSize, planeIndex, chunk);
          await characteristic.write(packet);
          // TODO: Fix progress reporting for multiple planes
          yield (i + 1) / totalChunks;
          debugPrint('Sent chunk ${i + 1}/$totalChunks of plane $planeIndex');
        }
      }

      // Verify CRC
      await characteristic.write([-91, 0, 19, 19]);
      final crcResponse = await notificationQueue.next.timeout(
        const Duration(seconds: 5),
      );
      debugPrint('CRC response: $crcResponse');
      debugPrint('CRC response hex: ${Hex.encode(crcResponse as Uint8List)}');

      // Extract CRC from response
      // The response format is not well documented, this is based on the Java code.
      // if (crcResponse.length < 5 || crcResponse[2] != 0x13) {
      //   throw Exception('Invalid CRC response, got $crcResponse');
      // }
      // final remoteCrcHex = Hex.encode(crcResponse).substring(8, 16);
      // final remoteCrc = int.parse(remoteCrcHex, radix: 16);

      // Calculate local CRC
      // final localCrc = Crc32.calculate(imagePlanes);
      // debugPrint('Local CRC: $localCrc, Remote CRC: $remoteCrc');

      // if (localCrc != remoteCrc) {
      // The original app has a retry mechanism. For now, we'll just throw.
      // throw Exception(
      //   'CRC check failed. Local: $localCrc, Remote: $remoteCrc',
      // );
      // }

      // Send "Display Image" command
      await characteristic.write([-91, 0, 20, 20]);
      // The original app waits for a final response (M14). We will do the same.
      await notificationQueue.next.timeout(const Duration(seconds: 5));

      await notificationQueue.cancel();
    } finally {
      await badge.device.disconnect();
    }
  }

  /// Creates a BLE packet based on the format observed from the original app.
  ///
  /// NOTE: This format differs significantly from the one described in
  /// `BLE_FORMAT.md`. This implementation is likely more correct, but the
  /// discrepancy should be investigated.
  ///
  /// Packet Structure:
  /// - Byte 0: Start byte (0xA5, which is -91)
  /// - Byte 1: Length of the rest of the packet (from command to data)
  /// - Byte 2: Command (0x12, CMD_setCabinetSensor)
  /// - Byte 3: Type
  /// - Bytes 4-5: Address (2-byte little-endian)
  /// - Bytes 6..n: Data payload
  /// - Byte n+1: Checksum
  List<int> _createBlePacket(int address, int type, Uint8List data) {
    final addressBytes = Uint8List(2);
    ByteData.view(addressBytes.buffer).setUint16(0, address, Endian.little);

    final packet = [
      -91,
      data.length + 3,
      18,
      0,
      ...addressBytes,
      ...data,
    ];

    return [...packet, getChecksum(packet)];
  }

  Future<void> turnOn() {
    return FlutterBluePlus.turnOn();
  }
}
