import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/ndef/ndef_badge_writer.dart';
import 'package:friends_badge/src/repositories/ble_badge_repository.dart';
import 'package:friends_badge/src/repositories/nfc_implementations/common_nfc_implementation.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/nfc_manager_android.dart';

class _IsoDepNfcWriter(final IsoDepAndroid _isoDep) implements NfcWriter {
  @override
  Future<Uint8List> writeBytes(Uint8List bytes) {
    return _isoDep.transceive(bytes);
  }
}

class _IsoDepTransceiverAndroid(final IsoDepAndroid _isoDep)
    implements IsoDepTransceiver {
  @override
  Future<Uint8List> transceive(Uint8List commandApdu) {
    // IsoDepAndroid.transceive returns the full R-APDU including SW1-SW2.
    return _isoDep.transceive(commandApdu);
  }
}

class const AndroidNfcImplementation() extends CommonNfcImplementation {
  @override
  NfcWriter initNfcWriter(NfcTag tag) {
    final isoDep = IsoDepAndroid.from(tag);
    if (isoDep == null) {
      throw Exception('Tag is not IsoDep compatible');
    }
    return _IsoDepNfcWriter(isoDep);
  }

  @override
  BadgeId getBadgeIdFromTag(NfcTag tag) {
    final isoDep = IsoDepAndroid.from(tag);
    if (isoDep == null) {
      throw Exception('Tag is not IsoDep compatible');
    }
    return BadgeId(isoDep.tag.id);
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
