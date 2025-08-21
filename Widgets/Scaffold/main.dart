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
        appBar: AppBar(
          title: Text("Scaffold Example"),   // Top bar
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Hello, this is the Body!",
            style: TextStyle(fontSize: 20),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // action here
          },
          child: Icon(Icons.add),
        ),
        drawer: Drawer(                     // Left side navigation
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Menu"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(title: Text("Item 1")),
              ListTile(title: Text("Item 2")),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
