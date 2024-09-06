import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled7/homepage.dart';
import 'package:untitled7/aboutus.dart';

import 'contact.dart';

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
      routes: {
        "Home Page": (context) => Homepage(),
        "About Us": (context) => AboutUs(),
        "Contact Us": (context) => Contact(),
      },
      home: Homepage(),
    );
  }
}
