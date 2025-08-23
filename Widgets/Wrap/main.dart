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
        appBar: AppBar(title: Text("Wrap Example")),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            spacing: 10,       // horizontal spacing
            runSpacing: 10,    // vertical spacing
            children: List.generate(12, (index) {
              return Container(
                width: 80,
                height: 80,
                color: Colors.pink[100 * ((index % 8) + 1)],
                child: Center(
                  child: Text(
                    "Item ${index + 1}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
