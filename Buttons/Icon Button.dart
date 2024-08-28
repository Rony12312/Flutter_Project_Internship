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
              title: const Text("Icon Button"),
            ),
            body: Container(
              child:IconButton(onPressed: (){
                print("hello world");
              }, icon: Icon(Icons.person, color: Colors.blue, size: 100),


            ))));
  }
}
