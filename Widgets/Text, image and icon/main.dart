import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Widget Example")),
        body: Center(
          child: Column(                // 👈 Column to place multiple widgets vertically
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 🔹 Text Widget
              Text(
                "Hello Flutter World!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  letterSpacing: 2, // adds space between letters
                ),
              ),

              SizedBox(height: 20), // space between widgets

              // 🔹 Icon Widget
              Icon(
                Icons.favorite,     // built-in Material icon
                color: Colors.red,  // color of the icon
                size: 50,           // icon size
              ),

              SizedBox(height: 20), // space between widgets

              // 🔹 Image Widget (from network)
              Image.network(
                "https://picsum.photos/200", // random online image
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
