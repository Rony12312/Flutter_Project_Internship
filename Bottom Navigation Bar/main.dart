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
  int selectedinex = 0;
  List<Widget> listwidget = [
    Text(
      "Home",
      style: TextStyle(fontSize: 30),
    ),
    Text(
      "Search",
      style: TextStyle(fontSize: 30),
    ),
    Text(
      "Settings",
      style: TextStyle(fontSize: 30),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  selectedinex = value;
                });
              },
              currentIndex: selectedinex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              selectedFontSize: 15,
              unselectedFontSize: 10,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ],
            ),
            appBar: AppBar(
              title: const Text('Bottom Navigation Bar'),
              backgroundColor: Colors.blue,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            ),
            body: Container(
              child: listwidget.elementAt(selectedinex),
            )));
  }
}
