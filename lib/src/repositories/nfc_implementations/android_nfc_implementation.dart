import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/repositories/nfc_implementations/common_nfc_implementation.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/nfc_manager_android.dart';

class _IsoDepNfcWriter implements NfcWriter {
  final IsoDepAndroid _isoDep;

  _IsoDepNfcWriter(this._isoDep);

  @override
  Future<Uint8List> writeBytes(Uint8List bytes) {
    return _isoDep.transceive(bytes);
  }
}

class AndroidNfcImplementation extends CommonNfcImplementation {
  const AndroidNfcImplementation();

  @override
  NfcWriter initNfcWriter(NfcTag tag) {
    final isoDep = IsoDepAndroid.from(tag);
    if (isoDep == null) {
      throw Exception('Tag is not IsoDep compatible');
    }
    return _IsoDepNfcWriter(isoDep);
  }
}
