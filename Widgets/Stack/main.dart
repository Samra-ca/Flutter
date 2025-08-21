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
        appBar: AppBar(title: Text("Stack Example")),
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blue, // bottom
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red, // middle
                ),
              ),
              Positioned(
                top: 100,
                left: 100,
                child: Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.yellow, // top
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
