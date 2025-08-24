import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Demo',
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigate to second page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SecondPage()),
            );
          },
          child: Hero(
            tag: 'hero-image', // Unique tag to link widgets
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
              child: const Icon(Icons.star, color: Colors.white, size: 50),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: Hero(
          tag: 'hero-image', // Same tag must match
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purple,
            child: const Icon(Icons.star, color: Colors.white, size: 100),
          ),
        ),
      ),
    );
  }
}
