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
              title: const Text("Card and List Tile"),
            ),
            body: Container(
                child: ListView(children: [
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: ListTile(
                    onLongPress: () {
                      print("Long Press");
                    },
                    leading: Text("1"),
                    onTap: () {
                      print("hello");
                    },
                    title: Text("Rony"),
                    subtitle: Text("22"),
                    trailing: Text("2022"),
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: ListTile(
                    enabled: false,
                    onLongPress: () {
                      print("Long Press");
                    },
                    leading: Text("2"),
                    onTap: () {
                      print("hello");
                    },
                    title: Text("Wael"),
                    subtitle: Text("20"),
                    trailing: Text("2024"),
                  ))
            ]))));
  }
}
