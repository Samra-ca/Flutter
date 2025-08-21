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
        appBar: AppBar(title: Text("Flexible Example")),
        body: Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 81, 139, 221),
              width: 80, // fixed width
              child: Center(child: Text("Fixed")),
            ),
            Flexible(
              flex: 2, // takes 2 parts of space
              fit: FlexFit.loose, // child only takes what it needs
              child: Container(
                color: const Color.fromARGB(255, 20, 211, 154),
                height: 100,
                child: Center(child: Text("Flexible Loose")),
              ),
            ),
            Flexible(
              flex: 3, // takes 3 parts of space
              fit: FlexFit.tight, // fills available space
              child: Container(
                color: const Color.fromARGB(255, 225, 173, 89),
                height: 100,
                child: Center(child: Text("Flexible Tight")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
