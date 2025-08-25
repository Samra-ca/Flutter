import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Preservation Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Three pages for demonstration
  final List<Widget> _pages = const [
    CounterPage(pageName: "Counter Page"),
    NotesPage(pageName: "Notes Page"),
    ProfilePage(pageName: "Profile Page"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Preservation Example"),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter"),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: "Notes"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

/// Counter Page (remembers count even after tab switch)
class CounterPage extends StatefulWidget {
  final String pageName;
  const CounterPage({super.key, required this.pageName});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage>
    with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  bool get wantKeepAlive => true; // 🔹 This preserves the state

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required when using AutomaticKeepAliveClientMixin
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.pageName, style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          Text("Counter: $_counter", style: const TextStyle(fontSize: 28)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: const Text("Increment Counter"),
          ),
        ],
      ),
    );
  }
}

/// Notes Page (remembers typed text even after tab switch)
class NotesPage extends StatefulWidget {
  final String pageName;
  const NotesPage({super.key, required this.pageName});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage>
    with AutomaticKeepAliveClientMixin {
  final TextEditingController _controller = TextEditingController();

  @override
  bool get wantKeepAlive => true; // 🔹 This preserves the state

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.pageName, style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Write some notes...",
            ),
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

/// Profile Page (just static but preserved)
class ProfilePage extends StatefulWidget {
  final String pageName;
  const ProfilePage({super.key, required this.pageName});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true; // 🔹 This preserves the state

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://i.pravatar.cc/150?img=3"), // dummy profile image
          ),
          const SizedBox(height: 20),
          Text(widget.pageName, style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 10),
          const Text("John Doe", style: TextStyle(fontSize: 18)),
          const Text("Flutter Developer", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
