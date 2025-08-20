import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("IconButton Example"),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.thumb_up),   
            color: const Color.fromARGB(255, 221, 80, 120),         
            iconSize: 40,              
            onPressed: () {         
              print("Icon Button Pressed");
            },
          ),
        ),
      ),
    );
  }
}
