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
        appBar: AppBar(title: Text("TextField Example")),
        body: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  hintText: "Type here...",      
                  border: OutlineInputBorder(),  
                  prefixIcon: Icon(Icons.person), 
                ),
                keyboardType: TextInputType.text, 
                obscureText: false,             
              ),
            ],
          ),
        ),
      ),
    );
  }
}

          