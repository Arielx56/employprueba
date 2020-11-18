import 'package:employprueba/src/screens/nomina.dart';
import 'package:flutter/material.dart';
import 'package:employprueba/src/screens/intro.dart';
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
      home: IntroScreen(),
   

    );
  }
}

