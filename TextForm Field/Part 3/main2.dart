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
  String? textvalue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("TextForm Field Part 2"),
            ),
            body: Container(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      textvalue = value;
                    });
                  },
                  decoration: InputDecoration(labelText: "username"),
                ),
                MaterialButton(
                  onPressed: () {
                    print(textvalue);
                  },
                  child: Text("Print"),
                  color: Colors.blue,
                ),
                Text("$textvalue")
              ]),
            )));
  }
}
