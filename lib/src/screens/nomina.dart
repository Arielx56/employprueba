import 'package:employprueba/src/widgets/ListDocument.dart';
import 'package:employprueba/src/widgets/btnoption.dart';
import 'package:employprueba/src/widgets/fondo1.dart';
import 'package:flutter/material.dart';

class NominaScreen extends StatelessWidget {
  const NominaScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listDoc = ListDocument();
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 25.0,),
          Column(
            children: [
              ListTile(
                title:coloresGradiant(Color.fromRGBO(13, 182, 215, 1.0), Color.fromRGBO(26, 163, 235, 1.0),Color.fromRGBO(32, 149, 244, 1.0), 'Nomina') ,
              )
            ],
          ),
          // coloresGradiant(Color.fromRGBO(13, 182, 215, 1.0), Color.fromRGBO(26, 163, 235, 1.0),Color.fromRGBO(32, 149, 244, 1.0), 'Documentos'),
          listDoc.listadeDocumentos(context),
          listDoc.listadeDocumentos(context),
          
        ],
      ),
      floatingActionButton: BtnMenu(),
      
    );
  }
}