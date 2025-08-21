import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListTile Demo"),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("John Doe"),
              subtitle: Text("Software Engineer"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Tapped on John Doe");
              },
            ),
            Divider(), // separator line

            ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 223, 67, 124),
                child: Text("A"),
              ),
              title: Text("Alice"),
              subtitle: Text("alice@example.com"),
              trailing: Icon(Icons.email),
              onTap: () {
                print("Tapped on Alice");
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Switch(
                value: true,
                onChanged: (val) {
                  print("Switch changed: $val");
                },
              ),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              subtitle: Text("On / Off toggle"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                print("Tapped Notifications");
              },
            ),
          ],
        ),
      ),
    );
  }
}
