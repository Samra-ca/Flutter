import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioExample(),
    );
  }
}

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  // State variable to hold selected option
  String selectedOption = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button Example")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            // Radio 1
            ListTile(
              title: Text("Option 1"),
              leading: Radio<String>(
                value: "Option 1",
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
            ),

            // Radio 2
            ListTile(
              title: Text("Option 2"),
              leading: Radio<String>(
                value: "Option 2",
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
            ),

            // Radio 3
            ListTile(
              title: Text("Option 3"),
              leading: Radio<String>(
                value: "Option 3",
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
            ),

            // Display Selected Option
            SizedBox(height: 20),
            Text("Selected: $selectedOption",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
