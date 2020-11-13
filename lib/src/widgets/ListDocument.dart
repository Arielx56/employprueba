import 'package:flutter/material.dart';
import 'package:employprueba/src/screens/documento.dart';

class ListDocument {
  Widget listadeDocumentos(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Mes seleccionado'),
          subtitle: Text('Lorem ipsum dolor sit'),
          trailing: Icon(Icons.check),
          onTap: () {
            Navigator.push( context, new MaterialPageRoute(builder: (context) => new DocumentoPdf()));
          },
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 0.2,
              color: Colors.grey,
            )),
      ],
    );
  }

}
