import 'package:employprueba/src/screens/documentos.dart';
import 'package:employprueba/src/widgets/fondo1.dart';
import 'package:flutter/material.dart';

class PassScreen extends StatelessWidget {
  final Shader degradadoTexto = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topLeft,
    tileMode: TileMode.repeated,
    colors: [
      Color.fromRGBO(183, 48, 176, 1.0),
      Color(0xffDA44bb),
      Color(0xff8921aa)
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 400.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          fondoApp(),
          Column(
            children: [
              SizedBox(
                height: 350.0,
                width: double.infinity,
              ),
              Text(
                '¡Hola!',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = degradadoTexto),
              ),
              Container(
                padding: EdgeInsets.only(left: 110.0, top: 20.0),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20.0),
                  showCursor: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Ingrese su contraseña',
                  ),
                  obscureText: true,
                ),
              )
            ],
          ),
          Positioned(
            right: 1.0,
            bottom: 20.0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 40.0,
              ),
              onPressed: () {
                 Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                   return new DocumentScreen();
                 }),(route) => false);
              },
            ),
          ),
          Positioned(
            left: 1.0,
            bottom: 20.0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 40.0,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
