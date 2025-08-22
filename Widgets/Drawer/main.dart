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
        appBar: AppBar(title: Text("Drawer Example")),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 116, 140, 160),
                ),
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 34, 51, 66),
                    fontSize: 35,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  // action for Home
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  // action for Settings
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: () {
                  // action for Contact
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            "Swipe from left or tap menu icon to open Drawer",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
