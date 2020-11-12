import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MenuScreen extends StatefulWidget {
 final Shader degradadoTexto = LinearGradient(
  colors: [Colors.blue.shade400, Colors.blue.shade900,],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    // Size tamano = MediaQuery.of(context).size;
    return Scaffold(
      // body: Container(),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Color.fromRGBO(23, 161, 233, 0.5),
        backgroundColor: Colors.white,
        animatedIconTheme: IconThemeData(color: Colors.black,size: 35.0),
        shape: CircleBorder(side: BorderSide(color: Colors.blue,width: 3.5)),
        children: [
          SpeedDialChild(
            child: Icon(Icons.insert_drive_file,color: Colors.black,),
            backgroundColor: Colors.white

          ),
          SpeedDialChild(
            child: Icon(Icons.perm_identity,color: Colors.black,),
            backgroundColor: Colors.white

          ),
          SpeedDialChild(
            child: Icon(Icons.add,color: Colors.black,),
            backgroundColor: Colors.white

          ),
        ],
      )
    );
  }
}
