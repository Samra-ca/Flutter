import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchExample(),
    );
  }
}

class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool switch1 = false; // initial state for first switch
  bool switch2 = true;  // initial state for second switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: switch1,
              onChanged: (bool newValue) {
                setState(() {
                  switch1 = newValue; // update first switch
                });
              },
            ),
            Text("Switch 1 is ${switch1 ? "ON" : "OFF"}"),
            SizedBox(height: 20),
            Switch(
              value: switch2,
              onChanged: (bool newValue) {
                setState(() {
                  switch2 = newValue; // update second switch
                });
              },
            ),
            Text("Switch 2 is ${switch2 ? "ON" : "OFF"}"),
          ],
        ),
      ),
    );
  }
}
