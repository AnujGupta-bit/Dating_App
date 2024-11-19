import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class picker extends StatefulWidget {


  @override
  State<picker> createState() => _pickerState();
}

class _pickerState extends State<picker> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    if(image != null)
      {
        setState(() {
          _image = File(image.path);
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
            ?Text("no image seleted")
                :Image.file(_image!),
            SizedBox(height: 020,),
            ElevatedButton(onPressed: () => _pickImage(ImageSource.gallery), child: Text(' image from gallery'),
            ),
            ElevatedButton(onPressed: () => _pickImage(ImageSource.camera), child: Text('capture from camera'),
            ),
          ],
        ),
      )

    );
  }
}
