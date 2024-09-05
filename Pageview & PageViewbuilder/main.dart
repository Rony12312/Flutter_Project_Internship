import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  List imagename = [
    "images/image.jpg",
    "images/image.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Pageview & PageViewbuilder'),
              backgroundColor: Colors.blue,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            ),
            body: Container(
              height: 300,
              child: PageView.builder(
                itemCount: imagename.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imagename[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            )));
  }
}
