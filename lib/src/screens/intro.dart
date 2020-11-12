import 'package:employprueba/src/widgets/fondo1.dart';
import 'package:flutter/material.dart';


class IntroScreen extends StatelessWidget {

 final Shader degradadoTexto = LinearGradient(
  colors: [Color(0xffDA44bb), Color(0xff8921aa)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          fondoApp(),
          Center(
            child: Text('¡Bienvenido!',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = degradadoTexto
              ),),
          )
        ], 
      ),
      // aqui va ir lo del boton animado 
    );
  }

}
