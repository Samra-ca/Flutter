import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // ✅ Don't put const here
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedContainerExample(),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedContainer Example")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1), // animation duration
            curve: Curves.easeInOut,       // smooth animation
            width: _isExpanded ? 200 : 100,
            height: _isExpanded ? 200 : 100,
            decoration: BoxDecoration(
              color: _isExpanded ? Colors.blue : Colors.red,
              borderRadius: BorderRadius.circular(_isExpanded ? 30 : 5),
            ),
            child: Center(
              child: Text(
                "Tap Me",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
