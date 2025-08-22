import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3, // number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Example"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.search), text: "Search"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Home Screen", style: TextStyle(fontSize: 24))),
              Center(child: Text("Search Screen", style: TextStyle(fontSize: 24))),
              Center(child: Text("Profile Screen", style: TextStyle(fontSize: 24))),
            ],
          ),
        ),
      ),
    );
  }
}
