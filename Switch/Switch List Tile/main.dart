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
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Switch"),
            ),
            body: Container(
                child: Center(
                    child: Column(
              children: [
                SwitchListTile(
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.orange,
                  title: Text("Status"),
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value;
                    });
                  },
                ),
                Text(status ? "ON" : "OFF"),
              ],
            )))));
  }
}
