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
              title: const Text("Checkbox"),
            ),
            body: Container(
                child: Column(children: [
              CheckboxListTile(
                  title: Text("Football"),
                  value: football,
                  onChanged: (value) {
                    setState(() {
                      football = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text("Basketball"),
                  value: basketball,
                  onChanged: (value) {
                    setState(() {
                      basketball = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text("Tennis"),
                  value: tennis,
                  onChanged: (value) {
                    setState(() {
                      tennis = value!;
                    });
                  })
            ]))));
  }
}
