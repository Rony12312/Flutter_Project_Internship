import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Icon And IconButton"),
            ),
            body: Container(
                child: IconButton(
              iconSize: 200,
              onPressed: () {
                print("hello");
              },
              icon: Icon(Icons.star, color: Colors.blue),
            ))));
  }
}

