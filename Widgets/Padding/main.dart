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
          title: Text("Padding Widget Example"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue, // 👈 Outer background color
            child: Padding(
              padding: EdgeInsets.all(30), // 👈 Space inside the blue box
              child: Container(
                color: Colors.yellow, // 👈 Inner container (to show padding clearly)
                child: Text(
                  "Hello World",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
