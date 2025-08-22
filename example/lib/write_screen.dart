import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:friends_badge/friends_badge.dart';

class WriteScreen extends StatefulWidget {
  final Uint8List? convertedImage;

  const WriteScreen({super.key, this.convertedImage});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  final BadgeRepository _bleBadgeRepository = BleBadgeRepository();
  final BadgeRepository _nfcBadgeRepository = NfcBadgeRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write to Badge'),
      ),
      body: Column(
        children: [
          if (widget.convertedImage != null)
            Image.memory(widget.convertedImage!)
          else
            const Text('No image to write'),
          ElevatedButton(
            onPressed: () {
              if (widget.convertedImage != null) {
                // TODO: Select a device
                // _bleBadgeRepository.writeOverBle('device_address', widget.convertedImage!);
                print('Writing over BLE...');
              }
            },
            child: const Text('Write over BLE'),
          ),
          ElevatedButton(
            onPressed: () {
              if (widget.convertedImage != null) {
                _nfcBadgeRepository.writeOverNfc(widget.convertedImage!);
                print('Writing over NFC...');
              }
            },
            child: const Text('Write over NFC'),
          ),
        ],
      ),
    );
  }
}
