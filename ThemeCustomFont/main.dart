import 'package:flutter/material.dart';
import 'package:untitled7/homepage.dart';
import 'package:untitled7/pageone.dart';
import 'package:untitled7/pagetwo.dart';

void main() {
  runApp(const MyApp());
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lumanosimo",
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 20),
          bodyMedium: TextStyle(fontSize: 25),
          bodyLarge: TextStyle(fontSize: 30),
        ),
      ),
      home: HomePage(),
      routes: {
        "homepage": (context) => HomePage(),
        "pageone": (context) => PageOne(),
        "pagetwo": (context) => PageTwo(),
      },
    );
  }
}

class Homepage {
  const Homepage();
}
