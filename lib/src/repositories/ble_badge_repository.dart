import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'badge_repository.dart';

class BleBadgeRepository implements BadgeRepository {
  static final Guid serviceUuid = Guid('6e400001-b5a3-f393-e0a9-e50e24dcca9e');
  static final Guid writeCharacteristicUuid = Guid('6e400002-b5a3-f393-e0a9-e50e24dcca9e');
  static final Guid notifyCharacteristicUuid = Guid('6e400003-b5a3-f393-e0a9-e50e24dcca9e');

  @override
  Stream<List<String>> scanForBleDevices() {
    final completer = StreamController<List<String>>();

    FlutterBluePlus.adapterState.listen((state) {
      if (state == BluetoothAdapterState.on) {
        FlutterBluePlus.startScan(withServices: [serviceUuid]);
      } else {
        completer.addError(Exception('Bluetooth is not available'));
      }
    });

    FlutterBluePlus.scanResults.listen((results) {
      final deviceNames = results
          .where((result) => result.device.name.isNotEmpty)
          .map((result) => result.device.name)
          .toList();
      completer.add(deviceNames);
    });

    return completer.stream;
  }

  @override
  Future<void> writeOverBle(String address, List<int> data) async {
    final device = BluetoothDevice.fromId(address);
    await device.connect();

    try {
      final services = await device.discoverServices();
      final service = services.firstWhere((s) => s.uuid == serviceUuid);
      final characteristic = service.characteristics.firstWhere((c) => c.uuid == writeCharacteristicUuid);
      final notifyCharacteristic = service.characteristics.firstWhere((c) => c.uuid == notifyCharacteristicUuid);

      await notifyCharacteristic.setNotifyValue(true);
      final notifications = notifyCharacteristic.onValueReceived;
      final completer = Completer<void>();

      final notificationSubscription = notifications.listen((value) {
        // TODO: Properly parse the response
        if (value.isNotEmpty && value[0] == 0x01) {
          completer.complete();
        } else {
          completer.completeError(Exception('Badge returned an error'));
        }
      });

      const chunkSize = 20;
      for (var i = 0; i < data.length; i += chunkSize) {
        final chunk = data.sublist(i, i + chunkSize > data.length ? data.length : i + chunkSize);
        final packet = _createBlePacket(i ~/ chunkSize, 0x07, chunk);
        await characteristic.write(packet);
      }

      await completer.future;
      await notificationSubscription.cancel();
    } finally {
      await device.disconnect();
    }
  }

  List<int> _createBlePacket(int address, int command, List<int> data) {
    final packet = <int>[];
    packet.add(0xBB);
    packet.add(address);
    packet.add(command);
    packet.add(data.length);
    packet.addAll(data);

    int checksum = 0;
    for (int i = 1; i < packet.length; i++) {
      checksum += packet[i];
    }
    packet.add(checksum & 0xFF);

    packet.add(0x7E);
    return packet;
  }

  @override
  Future<void> writeOverNfc(List<int> data) {
    // This repository does not handle NFC
    throw UnimplementedError('This repository does not handle NFC');
  }
}
