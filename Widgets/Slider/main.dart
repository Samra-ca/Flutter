import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliderDemoPage(),
    );
  }
}

class SliderDemoPage extends StatefulWidget {
  @override
  _SliderDemoPageState createState() => _SliderDemoPageState();
}

class _SliderDemoPageState extends State<SliderDemoPage> {
  // Single value sliders
  double basicValue = 20;
  double discreteValue = 5;
  double labeledValue = 50;

  // Range slider values
  RangeValues rangeValues = RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sliders Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("🔹 Basic Slider (continuous): ${basicValue.toStringAsFixed(1)}"),
            Slider(
              value: basicValue,
              min: 0,
              max: 100,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              onChanged: (newValue) {
                setState(() {
                  basicValue = newValue;
                });
              },
            ),
            SizedBox(height: 20),

            Text("🔹 Discrete Slider (steps): $discreteValue"),
            Slider(
              value: discreteValue,
              min: 0,
              max: 10,
              divisions: 10, // step values
              activeColor: Colors.green,
              label: discreteValue.round().toString(),
              onChanged: (newValue) {
                setState(() {
                  discreteValue = newValue;
                });
              },
            ),
            SizedBox(height: 20),

            Text("🔹 Labeled Slider: ${labeledValue.round()}%"),
            Slider(
              value: labeledValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: "${labeledValue.round()}%",
              activeColor: Colors.orange,
              onChanged: (newValue) {
                setState(() {
                  labeledValue = newValue;
                });
              },
            ),
            SizedBox(height: 20),

            Text("🔹 Range Slider: ${rangeValues.start.round()} - ${rangeValues.end.round()}"),
            RangeSlider(
              values: rangeValues,
              min: 0,
              max: 100,
              divisions: 20,
              activeColor: Colors.purple,
              labels: RangeLabels(
                "${rangeValues.start.round()}",
                "${rangeValues.end.round()}",
              ),
              onChanged: (RangeValues newRange) {
                setState(() {
                  rangeValues = newRange;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
