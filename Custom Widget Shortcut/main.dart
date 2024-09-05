import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Shortcut'),
              backgroundColor: Colors.blue,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            ),
            body: Container(
                child: Column(children: [
              CustomListtile(
                name: 'Messi',
                email: 'examle@gmail.com',
                date: '2022-2-3',
                imagename: 'image.jpg',
              ),
              CustomListtile(
                name: 'Suarez',
                email: 'examle@gmail.com',
                date: '2022-2-3',
                imagename: 'image.jpg',
              ),
              CustomListtile(
                name: 'Xavi',
                email: 'examle@gmail.com',
                date: '2022-2-3',
                imagename: 'image.jpg',
              ),
              CustomListtile(
                name: 'Iniesta',
                email: 'examle@gmail.com',
                date: '2022-2-3',
                imagename: 'image.jpg',
              ),
            ]))));
  }
}
