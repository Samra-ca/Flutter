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
        appBar: AppBar(title: Text("Card Widget Example")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              // Simple Info Card
              Card(
                elevation: 5, // shadow depth
                shadowColor: Colors.black54,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter Card Example",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text("This is a simple info box with shadow."),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Card with ListTile
              Card(
                elevation: 3,
                shadowColor: const Color.fromARGB(255, 186, 10, 10),
                child: ListTile(
                  leading: Icon(Icons.person, color: const Color.fromARGB(255, 28, 129, 19)),
                  title: Text("John Doe"),
                  subtitle: Text("Software Engineer"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // action when tapped
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
