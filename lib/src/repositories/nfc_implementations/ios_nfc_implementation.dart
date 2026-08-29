import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/ndef/ndef_badge_writer.dart';
import 'package:friends_badge/src/repositories/nfc_implementations/common_nfc_implementation.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/nfc_manager_ios.dart';

class _Iso7816IosNfcWriter(final Iso7816Ios _iso7816) implements NfcWriter {
  @override
  Future<Uint8List> writeBytes(Uint8List bytes) {
    return _iso7816.sendCommandRaw(data: bytes).then((value) => value.payload);
  }
}

class _IsoDepTransceiverIos(final Iso7816Ios _iso7816)
    implements IsoDepTransceiver {
  @override
  Future<Uint8List> transceive(Uint8List commandApdu) async {
    final response = await _iso7816.sendCommandRaw(data: commandApdu);
    // Iso7816Ios returns payload and status word separately. Re-attach the
    // status word so NdefBadgeWriter can inspect SW1-SW2 uniformly.
    return Uint8List.fromList([
      ...response.payload,
      response.statusWord1,
      response.statusWord2,
    ]);
  }
}

class const IosNfcImplementation() extends CommonNfcImplementation {
  @override
  NfcWriter initNfcWriter(NfcTag tag) {
    final nfc = Iso7816Ios.from(tag);
    if (nfc == null) {
      throw Exception('Tag is not Iso7816 compatible');
    }
    return _Iso7816IosNfcWriter(nfc);
  }

  @override
  IsoDepTransceiver initIsoDepTransceiver(NfcTag tag) {
    final nfc = Iso7816Ios.from(tag);
    if (nfc == null) {
      throw Exception('Tag is not Iso7816 compatible');
    }
    return _IsoDepTransceiverIos(nfc);
  }
}
