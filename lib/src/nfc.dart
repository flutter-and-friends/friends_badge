import 'dart:async';
import 'dart:typed_data';

import 'package:nfc_manager/ndef_record.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager_ndef/nfc_manager_ndef.dart';

Future<Uint8List?> readNfcTag() async {
  final isAvailable = await NfcManager.instance.isAvailable();
  if (!isAvailable) {
    return null;
  }
  final completer = Completer<Uint8List?>();

  NfcManager.instance.startSession(
    onDiscovered: (tag) async {
      final ndef = Ndef.from(tag);
      final data = await ndef?.read();

      for (final record in data?.records ?? <NdefRecord>[]) {
        print('NFC Tag Text: ${record.identifier} ${record.payload}');
        print('NFC Type: ${record.typeNameFormat} ${record.type}');
      }
      final record = data?.records.firstOrNull?.identifier;
      completer.complete(record);
      //NfcManager.instance.stopSession();
    },
    pollingOptions: {NfcPollingOption.iso14443},
  );
  return completer.future;
}
