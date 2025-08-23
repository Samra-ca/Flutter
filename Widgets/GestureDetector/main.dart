import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDemo(),
    );
  }
}

class GestureDemo extends StatefulWidget {
  @override
  _GestureDemoState createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  String _gestureMessage = "Tap the box"; // initial message

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GestureDetector Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _gestureMessage = "Container tapped!";
                });
              },
              onDoubleTap: () {
                setState(() {
                  _gestureMessage = "Container double-tapped!";
                });
              },
              onLongPress: () {
                setState(() {
                  _gestureMessage = "Container long-pressed!";
                });
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Tap Me",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              _gestureMessage, // display gesture message
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
