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
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 247, 0, 111),
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Top Container",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 211, 91, 141),
                  child: Center(
                    child: Text(
                      "Bottom Container",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
