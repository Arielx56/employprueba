// import 'package:employprueba/src/screens/firma.dart';
import 'package:employprueba/src/widgets/fondo1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:ui' as ui;
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

class DatosPageview extends StatefulWidget {
  const DatosPageview({Key key}) : super(key: key);

  @override
  _DatosPageviewState createState() => _DatosPageviewState();
}

class _DatosPageviewState extends State<DatosPageview> {
  File _image;
  File _image1;
  File _image2;
  final picker = ImagePicker();

  // este funcion es del tipo asincrona y se va a encargar de obtener la imagen por eso es de tipo async puesto que se ejecutara hasta que la camara obtenga el "source"
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
  Future getImage1() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image1 = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
   Future getImage2() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image2 = File(pickedFile.path);
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
          _frenteDocumento(),
          _dorsoDocumento(),
          _selfie(),
          _firma(),
          _pinDeSeguridad(),
          _confpindeSeguridad()
        ],
      ),
    );
  }

  Widget _frenteDocumento() {
    return Scaffold(
      body: Stack(
        children: [
          fondoPageview(),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Stack(
              children: [
                ListTile(
                  title: Text('Datos Biométicos',style: TextStyle(fontSize: 31.0,fontWeight: FontWeight.bold, color: Colors.white)),
                  subtitle: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text('Dorso de Documento',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),),
                  ),
                ),
                // En este caso se uso el Gesture para que si el usuario presione cualquier parte del recuedro "CONTAINER" se active la camara y no tenga que atinarle al icono
                //posee el atributo "onTap" que nos permite clickear y asi ejecutar una respectiva funcion que en este caso es la funcion asincrona getImage
                GestureDetector(
                  onTap: getImage,
                  child: Container(
                    child: _image == null ? Icon(Icons.photo_camera, size: 50.0,color: Colors.white,) : Image.file(_image,fit: BoxFit.cover,),
                    margin: EdgeInsets.only(top: 110, left: 20.0, right: 20.0),
                    height: 300,
                    width:  350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.white, width: 2.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dorsoDocumento() {
    return Scaffold(
      body: Stack(
        children: [
          fondoPageview(),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Stack(
              children: [
                ListTile(
                  title: Text('Datos Biométicos',style: TextStyle(fontSize: 31.0, fontWeight: FontWeight.bold,color: Colors.white)),
                  subtitle: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text('Dorso de Documento', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20.0),),
                  ),
                ),
                GestureDetector(
                  onTap: getImage1,
                  child: Container(
                    child: _image1 == null ? Icon(Icons.photo_camera, size: 50.0,color: Colors.white,) : Image.file( _image1,fit: BoxFit.cover,),
                    margin: EdgeInsets.only(top: 110, left: 20.0, right: 20.0),
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.white, width: 2.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _selfie() {
    return Scaffold(
      body: Stack(
        children: [
          fondoPageview(),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Stack(
              children: [
                ListTile(
                  title: Text('Datos Biométicos',style: TextStyle( fontSize: 31.0,fontWeight: FontWeight.bold, color: Colors.white)),
                  subtitle: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text('Selfie',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: getImage2,
                  child: Container(
                    child: _image2 == null ? Icon(Icons.photo_camera,size: 50.0,color: Colors.white,) : Image.file(_image2,fit: BoxFit.cover),
                    margin: EdgeInsets.only(top: 110, left: 20.0, right: 20.0),
                    height: 380,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.white, width: 2.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _firma() {
    
    return Scaffold(
      body: Stack(
        children: [
          fondoPageview(),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Stack(
              children: [
                ListTile(
                  title: Text('Datos Biométicos',style: TextStyle(fontSize: 31.0,fontWeight: FontWeight.bold,color: Colors.white)),
                  subtitle: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text('Firma', style: TextStyle( fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FirmaScreen()));
                   
                  },
                  child: Container(
                    // child: imagen == null ? Text('Firma') : imagen ,
                    margin: EdgeInsets.only(top: 110, left: 20.0, right: 20.0),
                    height: 380,
                    width: 350,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.white, width: 2.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _pinDeSeguridad() {
    return Scaffold(
      body: Stack(
        children: [
          fondoPageview(),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Stack(
              children: [
                ListTile(
                  title: Text('Datos Biométicos',style: TextStyle(fontSize: 31.0,fontWeight: FontWeight.bold,color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _confpindeSeguridad() {
    return Scaffold(
      body: Stack(
        children: [
          fondoPageview(),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Stack(
              children: [
                ListTile(
                  title: Text('Datos Biométicos',style: TextStyle(fontSize: 31.0,fontWeight: FontWeight.bold,color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class FirmaScreen extends StatefulWidget {
  FirmaScreen({Key key}) : super(key: key);

  @override
  _FirmaScreenState createState() => _FirmaScreenState();
}

class _FirmaScreenState extends State<FirmaScreen> {
  GlobalKey<SignatureState> signatureKey = GlobalKey();
  ByteData imgData = ByteData(0);

  Future getimgFirma() async{
     
     final inicial = signatureKey.currentState;
     final img = await inicial.getData();
     var data = await img.toByteData(format: ui.ImageByteFormat.png);
     inicial.clear();
     final encoded = base64.encode(data.buffer.asUint8List());
     setState(() {
       imgData = data;
     });
    debugPrint("llamada a la funcion " + encoded);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          fondoPageview(),
          Padding(
            padding: EdgeInsets.only(top: 65.0),
            child: Stack(
              children: [
                ListTile(
                  title: Text('Crea tu Firma', style: TextStyle(fontSize: 31.0,fontWeight: FontWeight.bold,color: Colors.white)),
                ),
                Container(
                  child: Signature(
                    color: Colors.black,
                    strokeWidth: 5.0,
                    backgroundPainter: null,
                    onSign: null, // Callback called on user pan drawing
                    key: signatureKey, // key that allow you to provide a GlobalKey that'll let you retrieve the image once user has signed
                  ),
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      signatureKey.currentState.clear();
                    },
                  ),
                  left: 1.0,
                  bottom: 20.0,
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                     Navigator.of(context).pop();
                     getimgFirma();
                    },
                  ),
                  right: 1.0,
                  bottom: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}