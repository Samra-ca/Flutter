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
        appBar: AppBar(title: Text("GridView Example")),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,          // 2 columns
            crossAxisSpacing: 10,       // space between columns
            mainAxisSpacing: 10,        // space between rows
            childAspectRatio: 1,        // width:height ratio
            children: List.generate(6, (index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.pink[100 * (index + 1)],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Item ${index + 1}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
