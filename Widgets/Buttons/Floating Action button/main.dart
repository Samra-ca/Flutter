import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Floating Action Button Example")),
        body: Center(
          child: Text("Press the Floating Action Button below"),
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB Pressed!");
          },
          child: Icon(Icons.add), 
          backgroundColor: const Color.fromARGB(255, 231, 151, 54), 
        ),
      ),
    );
  }
}
