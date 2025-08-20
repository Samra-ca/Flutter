import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft, // Positions child at top-left
          child: Text(
            "Hello Align",              // Child widget
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
