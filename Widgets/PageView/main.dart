import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PageView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageViewExample(),
    );
  }
}

class PageViewExample extends StatefulWidget {
  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> pages = [
    {
      "color": const Color.fromARGB(255, 231, 107, 155),
      "title": "Welcome",
      "subtitle": "Swipe to explore amazing features 🚀",
      "icon": Icons.explore,
    },
    {
      "color": const Color.fromARGB(255, 117, 224, 215),
      "title": "Stay Connected",
      "subtitle": "Chat, call, and stay close with your loved ones 💬",
      "icon": Icons.people,
    },
    {
      "color": const Color.fromARGB(255, 151, 223, 135),
      "title": "Get Started",
      "subtitle": "Join us and enjoy the experience 🌟",
      "icon": Icons.check_circle,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                color: pages[index]["color"],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        pages[index]["icon"],
                        size: 100,
                        color: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Text(
                        pages[index]["title"],
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        pages[index]["subtitle"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          // Page Indicator Dots
          Positioned(
            bottom: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: _currentPage == index ? 25 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),

          // Floating Button (Next/Done)
          Positioned(
            bottom: 80,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                _currentPage == pages.length - 1
                    ? Icons.done
                    : Icons.arrow_forward,
                color: Colors.black,
              ),
              onPressed: () {
                if (_currentPage < pages.length - 1) {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You’re all set! 🎉")),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
