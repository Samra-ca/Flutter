import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

// Simulate a stream that emits data every second
Stream<int> numberStream() {
  return Stream.periodic(Duration(seconds: 1), (count) => count + 1).take(10);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("StreamBuilder Example")),
        body: Center(
          child: StreamBuilder<int>(
            stream: numberStream(), // the stream
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Waiting for data...");
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (snapshot.hasData) {
                return Text(
                  "Current Number: ${snapshot.data}",
                  style: TextStyle(fontSize: 24),
                );
              } else {
                return Text("Stream closed");
              }
            },
          ),
        ),
      ),
    );
  }
}
