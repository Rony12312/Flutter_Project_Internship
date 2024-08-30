import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool football = false;
  bool basketball = false;
  bool tennis = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Stack"),
            ),
            body: Container(
                child: Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Positioned(
                child: Text("Stack"),
                left: 0,
                top: 0,
              )
            ]))));
  }
}
