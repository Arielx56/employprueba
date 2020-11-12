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
      children: [
        SpeedDialChild(
            child: Icon(
              Icons.insert_drive_file,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            onTap: (){
              //  Navigator.push( context, new MaterialPageRoute(builder: (context) => new DescripcionProducto()));
            }),
        SpeedDialChild(
            child: Icon(
              Icons.perm_identity,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
             onTap: (){
              //  Navigator.push( context, new MaterialPageRoute(builder: (context) => new DescripcionProducto()));
            }),
        SpeedDialChild(
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
             onTap: (){
              //  Navigator.push( context, new MaterialPageRoute(builder: (context) => new DescripcionProducto()));
            }),
      ],
    );

  }
}
