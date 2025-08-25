import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';

class TemplateEditorScreen extends StatefulWidget {
  const TemplateEditorScreen({super.key});

  @override
  State<TemplateEditorScreen> createState() => _TemplateEditorScreenState();
}

class _TemplateEditorScreenState extends State<TemplateEditorScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template Editor'),
      ),
      body: Column(
        children: [
          if (_image != null)
            Image.file(_image!)
          else
            const Text('No image selected'),
          // DropdownButton<ColorPalette>(
          //   value: _selectedPalette,
          //   onChanged: (ColorPalette? newValue) {
          //     if (newValue != null) {
          //       setState(() {
          //         _selectedPalette = newValue;
          //       });
          //     }
          //   },
          //   items: ColorPalette.values.map((ColorPalette palette) {
          //     return DropdownMenuItem<ColorPalette>(
          //       value: palette,
          //       child: Text(palette.toString().split('.').last),
          //     );
          //   }).toList(),
          // ),
          ElevatedButton(
            onPressed: _pickImage,
            child: const Text('Pick Image'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (_image case final image?) {
                final decodedImage = img.decodeImage(await image.readAsBytes());
                if (decodedImage == null) {
                  return;
                }

                Navigator.pop(
                  context,
                  img.resize(
                    decodedImage,
                    height: 416 * 2,
                  ),
                );
              }
            },
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }
}
