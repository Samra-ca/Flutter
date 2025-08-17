import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(                                                       // Put everything in the center of screen
          child: Container(                                                 // A box widget
            width: 200,                                                     // Box width = 200
            height: 100,                                                    // Box height = 100
            color: const Color.fromARGB(255, 170, 33, 243),               // Box color
            child: Center(                                                  // Center the text inside the box
              child: Text(                                                  // Text widget
                "Hello Flutter",                                            // Text to display
                style: TextStyle(color: Colors.white, fontSize: 20),      // Text style
              ),
            ),
          ),
        ),
      ),
    );
  }
}


/*
Container Widget Explanation:

- A Container is like a **box** where you can put another widget (child) inside it.
- You can **change its size** using `width` and `height`.
- You can **add color** using `color: Colors.colorName`.
- You can **center the child** using `Center` widget or `alignment: Alignment.center`.
- You can add **padding** (inside space) using `padding: EdgeInsets.all(value)` or symmetric/only.
- You can add **margin** (outside space) using `margin: EdgeInsets.all(value)` or symmetric/only.
- To **round the corners**, you use `decoration: BoxDecoration(borderRadius: BorderRadius.circular(value))`.
- To **add a border**, use `decoration: BoxDecoration(border: Border.all(color: Colors.colorName, width: value))`.
- To **add a shadow**, use `boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(2, 2))]` inside BoxDecoration.
- To **add gradient**, use `decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.blue]))`.
- You can **transform** the container (rotate, scale) using `transform: Matrix4.rotationZ(angle)`.
- Remember: **Container can have only one child**, but you can use Row, Column, or Stack inside it to hold multiple widgets.

Summary: 
Container = Flexible box → customizable size, color, alignment, padding/margin, decoration (border, shadow, round corners, gradient) → holds one child.
*/