import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'onGenerateRoute Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      
      // All navigation handled here
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomePage());
        } 
        else if (settings.name == '/details') {
          final args = settings.arguments as String; // get passed data
          return MaterialPageRoute(
            builder: (context) => DetailsPage(message: args),
          );
        } 
        else {
          return MaterialPageRoute(builder: (context) => const UnknownPage());
        }
      },
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
            // Navigate using route name + pass data
            Navigator.pushNamed(
              context,
              '/details',
              arguments: "Hello from Home Page!",
            );
          },
        ),
      ),
    );
  }
}

// ------------------- Details Page -------------------
class DetailsPage extends StatelessWidget {
  final String message;

  const DetailsPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details Page")),
      body: Center(
        child: Text(
          "Message received: $message",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

// ------------------- Unknown Page -------------------
class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Not Found")),
      body: const Center(
        child: Text(
          "404 - Route not found!",
          style: TextStyle(fontSize: 18, color: Colors.red),
        ),
      ),
    );
  }
}
