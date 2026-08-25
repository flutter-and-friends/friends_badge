import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/ndef/ndef_badge_writer.dart';
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

class _IsoDepTransceiverAndroid implements IsoDepTransceiver {
  final IsoDepAndroid _isoDep;

  _IsoDepTransceiverAndroid(this._isoDep);

  @override
  Future<Uint8List> transceive(Uint8List commandApdu) {
    // IsoDepAndroid.transceive returns the full R-APDU including SW1-SW2.
    return _isoDep.transceive(commandApdu);
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

  @override
  IsoDepTransceiver initIsoDepTransceiver(NfcTag tag) {
    final isoDep = IsoDepAndroid.from(tag);
    if (isoDep == null) {
      throw Exception('Tag is not IsoDep compatible');
    }
    return _IsoDepTransceiverAndroid(isoDep);
  }
}
