import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckBoxExample(),
    );
  }
}

class CheckBoxExample extends StatefulWidget {
  @override
  _CheckBoxExampleState createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  // State variables for multiple checkboxes
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Checkboxes Example")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ✅ First Checkbox
            Row(
              children: [
                Checkbox(
                  value: isChecked1,
                  onChanged: (value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                ),
                Text("Option 1"),
              ],
            ),

            // ✅ Second Checkbox
            Row(
              children: [
                Checkbox(
                  value: isChecked2,
                  onChanged: (value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  },
                ),
                Text("Option 2"),
              ],
            ),

            // ✅ Third Checkbox
            Row(
              children: [
                Checkbox(
                  value: isChecked3,
                  onChanged: (value) {
                    setState(() {
                      isChecked3 = value!;
                    });
                  },
                ),
                Text("Option 3"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
