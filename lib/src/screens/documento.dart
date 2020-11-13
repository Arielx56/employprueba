import 'package:employprueba/src/screens/datosBiometricos.dart';
import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
class DocumentoPdf extends StatefulWidget {
  const DocumentoPdf({Key key}) : super(key: key);

  @override
  _DocumentoPdfState createState() => _DocumentoPdfState();
}
// child: PDF.assets('assets/curriculum_AAMM_MEJORADO.pdf',height: 600.0,width: 500.0,),
class _DocumentoPdfState extends State<DocumentoPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(249, 249, 249, 1.0),
        leading: IconButton(icon: Icon(Icons.clear,color: Colors.black,), onPressed: () {
          Navigator.of(context).pop();
        },),
        actions: [
         Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             IconButton(icon: Icon(Icons.file_download,color: Colors.black,), onPressed: () {
               
             },)
           ],
         )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(64, 64, 64, 1.0),
        child: Column(
          children: [
            // SizedBox(height: 20.0,),
            PDF.assets('assets/curriculum_AAMM_MEJORADO.pdf',height: 600.0,width: 500.0,),
            SizedBox(height: 7.0,),
            RaisedButton(
            color: Color.fromRGBO(28,154, 238, 1.0),
            child: Text('Firmar',style: TextStyle(fontSize: 20.0),),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DatosPageview()));
            },)
          ],
        )
      ),
    );
  }
}

