import 'package:employprueba/src/screens/documentos.dart';
import 'package:employprueba/src/screens/nomina.dart';
import 'package:employprueba/src/screens/pruebahor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class BtnMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      overlayColor: Color.fromRGBO(23, 161, 233, 0.5),
      backgroundColor: Colors.white,
      animatedIconTheme: IconThemeData(color: Colors.black, size: 35.0),
      shape: CircleBorder(side: BorderSide(color: Colors.blue, width: 3.5)),
      curve: Curves.slowMiddle,
      child: Text('LO QUE SEA'),
      children: [
        SpeedDialChild(
            child: Icon(Icons.insert_drive_file, color: Colors.black,),
            backgroundColor: Colors.white,
            onTap: () {
              //  Navigator.push( context, new MaterialPageRoute(builder: (context) => new DescripcionProducto()));
              Navigator.of(context).push( MaterialPageRoute(builder: (context) => DocumentScreen()));
            }),
        SpeedDialChild(
            child: Icon(Icons.folder_open, color: Colors.black,),
            backgroundColor: Colors.white,
            onTap: () {
              //  Navigator.push( context, new MaterialPageRoute(builder: (context) => new DescripcionProducto()));
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NominaScreen()));
            }),
        SpeedDialChild(
            child: Icon(
              Icons.add,  color: Colors.black,),
            backgroundColor: Colors.white,
            onTap: () {
              //  Navigator.push( context, new MaterialPageRoute(builder: (context) => new DescripcionProducto()));
            }),
      ],
    );
  }
}
