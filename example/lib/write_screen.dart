import 'dart:typed_data';

import 'package:example/template_editor_screen.dart';
import 'package:flutter/material.dart';
import 'package:friends_badge/friends_badge.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({
    required this.deviceAddress,
    super.key,
  });

  final String deviceAddress;

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  final BadgeRepository _bleBadgeRepository = BleBadgeRepository();
  final BadgeRepository _nfcBadgeRepository = NfcBadgeRepository();
  Uint8List? _convertedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write to ${widget.deviceAddress}'),
      ),
      body: Column(
        children: [
          if (_convertedImage != null)
            Image.memory(_convertedImage!)
          else
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TemplateEditorScreen(),
                  ),
                );
                if (result is Uint8List) {
                  setState(() {
                    _convertedImage = result;
                  });
                }
              },
              child: const Text('Create Template'),
            ),
          ElevatedButton(
            onPressed: () {
              if (_convertedImage != null) {
                _bleBadgeRepository.writeOverBle(
                  widget.deviceAddress,
                  _convertedImage!,
                );
              }
            },
            child: const Text('Write over BLE'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_convertedImage != null) {
                _nfcBadgeRepository.writeOverNfc(_convertedImage!);
              }
            },
            child: const Text('Write over NFC'),
          ),
        ],
      ),
    );
  }
}
