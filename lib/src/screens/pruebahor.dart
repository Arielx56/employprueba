import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';

class Example extends StatefulWidget {
  _Example createState() => _Example();
}

class _Example extends State<Example> {
  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          // heroTag: "train",
          backgroundColor: Colors.blueAccent,
          // mini: true,
          child: Icon(Icons.add,),
          onPressed: () {},
        )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
            // heroTag: "airplane",
            backgroundColor: Colors.blueAccent,
            mini: true,
            child: Icon(Icons.insert_drive_file),
            onPressed: () {
              
            },
            )
            ));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
            // heroTag: "directions",
            backgroundColor: Colors.blueAccent,
            disabledElevation: 10.0,
            isExtended: true,
            mini: true,
            child: Icon(Icons.folder_open),
            onPressed: () {
              
            },
            )
            ));

    return UnicornDialer(
            backgroundColor: Color.fromRGBO(23, 161, 233, 0.5),
            parentButtonBackground: Colors.blueAccent,
            orientation: UnicornOrientation.HORIZONTAL,
            parentButton: Icon(Icons.menu),
            childPadding: 12.0,
             
            childButtons: childButtons);
  }
}
