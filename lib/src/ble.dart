import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<BluetoothDevice?> findBleDeviceById(String id) async {
  print('Searching for BLE device with ID: $id');
  const timeout = Duration(seconds: 5);
  FlutterBluePlus.startScan(timeout: timeout);

  final completer = Completer<BluetoothDevice?>();
  FlutterBluePlus.scanResults.listen((results) {
    for (final r in results) {
      if (r.device.platformName.contains(id)) {
        FlutterBluePlus.stopScan();
        completer.complete(r.device);
        break;
      }
    }
  });

  return completer.future;
}

Future<String> listServicesAndCharacteristics(BluetoothDevice device) async {
  final services = await device.discoverServices();
  final stringBuffer = StringBuffer();

  for (final service in services) {
    stringBuffer.writeln('Service UUID: ${service.uuid}');
    for (final characteristic in service.characteristics) {
      stringBuffer.writeln('  Characteristic UUID: ${characteristic.uuid}');
      stringBuffer.writeAll(
        [
          '    Properties: ',
          'read: ${characteristic.properties.read}, ',
          'write: ${characteristic.properties.write}, ',
          'notify: ${characteristic.properties.notify}',
        ],
        '\n',
      );
    }
  }
  return stringBuffer.toString();
}

Future<void> sendBitmapToBadge(
  BluetoothDevice device,
  Uint8List bitmapData,
) async {
  final serviceUUID = Guid("your-service-uuid");
  final characteristicUUID = Guid("your-characteristic-uuid");

  await device.connect();
  final services = await device.discoverServices();

  final characteristic = services
      .firstWhere((s) => s.uuid == serviceUUID)
      .characteristics
      .firstWhere((c) => c.uuid == characteristicUUID && c.properties.write);

  // Split data into BLE-friendly chunks (max ~512 bytes)
  const mtu = 512;
  for (var offset = 0; offset < bitmapData.length; offset += mtu) {
    final chunk = bitmapData.sublist(
      offset,
      offset + mtu > bitmapData.length ? bitmapData.length : offset + mtu,
    );
    await characteristic.write(chunk, withoutResponse: true);
  }

  await device.disconnect();
}
