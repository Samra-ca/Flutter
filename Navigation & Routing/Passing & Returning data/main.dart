import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing & Returning Data',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}

// ------------------- Home Page -------------------
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? returnedData; // to store data received back

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Passing & Returning Data Demo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              child: const Text("Go to Details Page"),
              onPressed: () async {
                // Pass data and wait for result
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const DetailsPage(message: "Hello from Home!"),
                  ),
                );

                // Update UI with returned data
                setState(() {
                  returnedData = result;
                });
              },
            ),

            const SizedBox(height: 30),

            // Show returned data if available
            Text(
              returnedData == null
                  ? "No data returned yet."
                  : "Data returned: $returnedData",
              style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------- Details Page -------------------
class DetailsPage extends StatelessWidget {
  final String message; // data from Home Page

  const DetailsPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Message from Home: $message",
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              child: const Text("Return Data to Home"),
              onPressed: () {
                // Pop and send data back
                Navigator.pop(context, "Thank you from Details Page!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
