import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Simulate an async function that fetches data
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3)); // simulate network delay
  return "Data loaded successfully!";
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("FutureBuilder Example")),
        body: Center(
          child: FutureBuilder<String>(
            future: fetchData(), // the async function
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(); // show loader while waiting
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (snapshot.hasData) {
                return Text(
                  snapshot.data!,
                  style: TextStyle(fontSize: 20),
                ); // show the data
              } else {
                return Text("No Data");
              }
            },
          ),
        ),
      ),
    );
  }
}
