import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = [
    "Apple",
    "Banana",
    "Mango",
    "Orange",
    "Pineapple",
    "Grapes",
    "Strawberry",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ListView Example")),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: Icon(Icons.food_bank, color: Colors.deepOrange),
                title: Text(items[index]),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  print("Tapped on ${items[index]}");
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
