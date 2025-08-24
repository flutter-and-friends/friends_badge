// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:friends_badge/friends_badge.dart';
// import 'package:image/image.dart' as img;
// import 'package:image_picker/image_picker.dart';
//
// class TemplateEditorScreen extends StatefulWidget {
//   const TemplateEditorScreen({super.key});
//
//   @override
//   State<TemplateEditorScreen> createState() => _TemplateEditorScreenState();
// }
//
// class _TemplateEditorScreenState extends State<TemplateEditorScreen> {
//   File? _image;
//   List<Uint8List>? _convertedImage;
//   ColorPalette _selectedPalette = ColorPalette.blackAndWhite;
//
//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//         _convertedImage = null;
//       });
//     }
//   }
//
//   Future<void> _convertImage() async {
//     if (_image == null) {
//       return;
//     }
//
//     final image = img.decodeImage(await _image!.readAsBytes());
//     if (image == null) {
//       return;
//     }
//
//     final converter = ImageConverter();
//     final convertedData = converter.convertImage(image, _selectedPalette);
//
//     setState(() {
//       _convertedImage = convertedData;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Template Editor'),
//       ),
//       body: Column(
//         children: [
//           if (_convertedImage != null)
//             Image.memory(_convertedImage!)
//           else if (_image != null)
//             Image.file(_image!)
//           else
//             const Text('No image selected'),
//           DropdownButton<ColorPalette>(
//             value: _selectedPalette,
//             onChanged: (ColorPalette? newValue) {
//               if (newValue != null) {
//                 setState(() {
//                   _selectedPalette = newValue;
//                 });
//               }
//             },
//             items: ColorPalette.values.map((ColorPalette palette) {
//               return DropdownMenuItem<ColorPalette>(
//                 value: palette,
//                 child: Text(palette.toString().split('.').last),
//               );
//             }).toList(),
//           ),
//           ElevatedButton(
//             onPressed: _pickImage,
//             child: const Text('Pick Image'),
//           ),
//           ElevatedButton(
//             onPressed: _convertImage,
//             child: const Text('Convert Image'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (_convertedImage != null) {
//                 Navigator.pop(context, _convertedImage);
//               }
//             },
//             child: const Text('Done'),
//           ),
//         ],
//       ),
//     );
//   }
// }
