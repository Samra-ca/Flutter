import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Expanded Example")),
        body: Row(
          children: [
            Container(width: 80, height: 80, color: Colors.red), // fixed size
            Expanded(
              child: Container(
                height: 80,
                color: Colors.green, // fills remaining space
              ),
            ),
            Container(width: 80, height: 80, color: Colors.blue), // fixed size
          ],
        ),
      ),
    );
  }
}
