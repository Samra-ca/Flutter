import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0; // currently selected tab

  final List<Widget> _screens = [
    Center(child: Text("Home Screen", style: TextStyle(fontSize: 24))),
    Center(child: Text("Search Screen", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile Screen", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("BottomNavigationBar Example")),
        body: _screens[_currentIndex], // show current tab content
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // switch tabs
            });
          },
          selectedItemColor: const Color.fromARGB(255, 7, 53, 99),
          unselectedItemColor: const Color.fromARGB(255, 127, 160, 210),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
