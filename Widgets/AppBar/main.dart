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
        appBar: AppBar(
          title: Text("My App Bar"), // Title text
          leading: Icon(Icons.menu), // Left icon (menu)
          actions: [                 // Right side icons
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.blue, // AppBar background color
        ),
        body: Center(
          child: Text(
            "Hello, AppBar Example!",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
