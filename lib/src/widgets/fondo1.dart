import 'dart:math';

import 'package:flutter/material.dart';

Widget fondoApp() {
  final fondoprincipal = Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.white,
  );

  final figurageometrica = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 400.0,
        width: 400.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.clamp,
                colors: [
                  Color.fromRGBO(21, 167, 226, 1.0),
                  Color.fromRGBO(6, 194, 205, 1.0)
                ]),
            borderRadius: BorderRadius.circular(25.0)),
      ));

  final figurageometrica2 = Transform.rotate(
      angle: -pi / 6.0,
      child: Container(
        height: 400.0,
        width: 400.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.clamp,
                colors: [
                  //  Color.fromRGBO(21, 167, 226, 1.0),
                  // Color.fromRGBO(6, 194, 205, 1.0)
                  Color.fromRGBO(255, 112, 31, 1.0),
                  Color.fromRGBO(254, 170, 12, 1.0)
                ]),
            borderRadius: BorderRadius.circular(25.0)),
      ));

  return Stack(
    children: [
      fondoprincipal,
      Positioned(top: 20.0, right: 300.0, child: figurageometrica),
      Positioned(top: 400.0, left: 300.0, child: figurageometrica2)
    ],
  );
}

Widget coloresGradiant(Color color1, Color color2, Color color3, String texto) {
  final Shader degradadoTexto = LinearGradient(
    begin: FractionalOffset(0.0, 0.3),
    end: FractionalOffset(0.8, 1.0),
    tileMode: TileMode.repeated,
    colors: [color1, color2, color3],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 400.0, 70.0));

  return Text(texto,
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          foreground: Paint()..shader = degradadoTexto));
}

Widget fondoPageview() {
  final degradadoPageView = Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset(0.0, 0.6),
        end: FractionalOffset(0.0, 1.0),
        colors: [
        Color.fromRGBO(32, 149, 244, 1.0),
        Color.fromRGBO(13, 182, 215, 1.0),
        Color.fromRGBO(13, 182, 215, 1.0)
      ])
    ),
  );


  return Stack(
    children: [
      degradadoPageView
    ],
  );
}