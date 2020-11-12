import 'package:employprueba/src/screens/documentos.dart';
import 'package:flutter/material.dart';
import 'package:employprueba/src/screens/intro.dart';
import 'package:employprueba/src/screens/login.dart';
import 'package:employprueba/src/screens/menu.dart';
import 'package:employprueba/src/screens/pass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employ Prueba',
      debugShowCheckedModeBanner: false,
      initialRoute: 'documentos',
      // home: MenuScreen(),
      routes: {

          '/'     : (BuildContext context) => IntroScreen(),
          'login' : (BuildContext context) => LoginScreen(),
          'pass'  : (BuildContext context) => PassScreen(),
          'menu'  : (BuildContext context) => MenuScreen(),
          'documentos': (BuildContext context) => DocumentScreen()
      },

    );
  }
}

