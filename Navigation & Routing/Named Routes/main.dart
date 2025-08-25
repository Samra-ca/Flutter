import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      debugShowCheckedModeBanner: false,
      // Define routes here
      routes: {
        '/': (context) => const HomePage(),       // Default route
        '/details': (context) => const DetailsPage(),
      },
      initialRoute: '/', // Start with Home Page
    );
  }
}

// ------------------- Home Page -------------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Details Page"),
          onPressed: () {
            // Navigate using route name
            Navigator.pushNamed(context, '/details');
          },
        ),
      ),
    );
  }
}

// ------------------- Details Page -------------------
class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details Page")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go Back"),
          onPressed: () {
            // Pop (go back to Home Page)
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
