import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:friends_badge/src/repositories/nfc_implementations/common_nfc_implementation.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/nfc_manager_ios.dart';

class _Iso7816IosNfcWriter implements NfcWriter {
  final Iso7816Ios _iso7816;

  _Iso7816IosNfcWriter(this._iso7816);

  @override
  Future<Uint8List> writeBytes(Uint8List bytes) {
    return _iso7816.sendCommandRaw(data: bytes).then((value) => value.payload);
  }
}

class IosNfcImplementation extends CommonNfcImplementation {
  const IosNfcImplementation();

  @override
  NfcWriter initNfcWriter(NfcTag tag) {
    final nfc = Iso7816Ios.from(tag);
    if (nfc == null) {
      throw Exception('Tag is not Iso7816 compatible');
    }
    return _Iso7816IosNfcWriter(nfc);
  }
}
