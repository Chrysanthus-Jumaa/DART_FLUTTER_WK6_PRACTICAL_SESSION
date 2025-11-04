// IMPORTING THE MATERIAL DESIGN LIBRARY
import 'package:flutter/material.dart';

// DEFINE THE APPLICATION ENTRY POINT
void main() {
  runApp(MyApp());
}

// DEFINE THE ROOT OF THE APP
class MyApp extends StatelessWidget {
  // CALLING OUR CLASS CONSTRUCTOR
  MyApp({super.key});
  final TextEditingController _controller = TextEditingController();
  // BUILD THE ROOT OF OUR APPLICATION
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
  appBar: AppBar(title: Text("Flutter Widgets")),
  body: Center(
    child: Column(
  children: [
    TextField(
      decoration: InputDecoration(labelText: "Enter your name"),
      controller: _controller,
    ),
    ElevatedButton(
      onPressed: () {
        print("Button Pressed! Whatever was entered is ${_controller.text}");
      },
      child: Text("Click Me"),
    ),
  ],
)
  ),
),
    );
  }
}

// LAYOUT WIDGETS
// Column(
//   children: [
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Icon(Icons.home, size: 30),
//         Icon(Icons.star, size: 30),
//         Icon(Icons.settings, size: 30),
//       ],
//     ),
//     Padding(
//       padding: EdgeInsets.all(20),
//       child: Text("Hello Flutter!"),
//     ),
//   ],
// )