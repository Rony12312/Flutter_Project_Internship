import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("TextForm Field Part 1 "),
            ),
            body: Container(
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      icon: Icon(Icons.person),
                      iconColor: Colors.blue),
                ),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        icon: Icon(Icons.email_rounded),
                        iconColor: Colors.blue))
              ]),
            )));
  }
}
