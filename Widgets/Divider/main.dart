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
        appBar: AppBar(title: Text("Divider Example")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Above Line"),
            Divider(                // 🔹 Horizontal line
              color: Colors.black,
              thickness: 2,         // Line thickness
              indent: 20,           // Start padding
              endIndent: 20,        // End padding
            ),
            Text("Below Line"),
          ],
        ),
      ),
    );
  }
}
