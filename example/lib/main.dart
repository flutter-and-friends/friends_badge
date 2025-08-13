import 'package:flutter/material.dart';
import 'package:friends_badge/friends_badge.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NfcReaderScreen(),
    );
  }
}

class NfcReaderScreen extends StatefulWidget {
  const NfcReaderScreen({super.key});

  @override
  State<NfcReaderScreen> createState() => _NfcReaderScreenState();
}

class _NfcReaderScreenState extends State<NfcReaderScreen> {
  bool _isLoading = false;
  String? _nfcResult;
  String? _nfcTagId;

  Future<void> _readNfc() async {
    setState(() {
      _isLoading = true;
      _nfcResult = null;
      _nfcTagId = null;
    });

    final result = await readNfcTag();

    setState(() {
      _isLoading = false;
      _nfcResult = result?.toString() ?? 'No NFC tag found or NFC unavailable';
      _nfcTagId = result != null ? String.fromCharCodes(result) : null;
    });
  }

  Future<void> _connectToBle() async {
    if (_nfcTagId == null) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final device = await findBleDeviceById(_nfcTagId!);
      if (device != null) {
        final data = await listServicesAndCharacteristics(device);
        setState(() {
          _nfcResult =
              'Connected to BLE device with ID: $_nfcTagId\n'
              '$data';
        });
      } else {
        setState(() {
          _nfcResult = 'BLE device with ID $_nfcTagId not found';
        });
      }
    } catch (e) {
      setState(() {
        _nfcResult = 'Error: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NFC Reader'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _isLoading ? null : _readNfc,
              child: const Text('Read NFC Tag'),
            ),
            if (_nfcTagId != null)
              ElevatedButton(
                onPressed: _isLoading ? null : _connectToBle,
                child: const Text('Connect to BLE Device'),
              ),
            if (_isLoading)
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
            if (_nfcResult != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _nfcResult!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
