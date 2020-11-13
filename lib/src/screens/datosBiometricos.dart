import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DatosPageview extends StatefulWidget {
  const DatosPageview({Key key}) : super(key: key);

  @override
  _DatosPageviewState createState() => _DatosPageviewState();
}

class _DatosPageviewState extends State<DatosPageview> {

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Center(
             child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
          ),
          _frenteDocumento(),
          _dorsoDocumento(),
          _selfie(),
          _firma(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Widget _frenteDocumento() {
    return Center(
     child: RaisedButton(
       child: Text('Foto'),
       onPressed: null ),
    );
  }

  Widget _dorsoDocumento() {
    return Container(
      child: Center(
        child: Text('Pagina 2'),
      ),
    );
  }

  Widget _selfie() {
    return Container(
      child: Center(
        child: Text('Pagina 3'),
      ),
    );
  }

  Widget _firma() {
    return Container(
      child: Center(
        child: Text('Pagina 4'),
      ),
    );
  }



}
