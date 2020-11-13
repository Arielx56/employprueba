import 'package:employprueba/src/screens/login.dart';
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
              ),
              ),
          ),
          Positioned(
            right:  1.0,
            bottom: 20.0, 
            child: IconButton(icon: Icon(Icons.arrow_forward_ios,size: 40.0,), onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                return new LoginScreen();
              }),(route)=>false);
          },),)
        ], 
      ),
      
      // aqui va ir lo del boton animado 
    );
  }

}
