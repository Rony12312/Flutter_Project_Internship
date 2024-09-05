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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('TabBar'),
                backgroundColor: Colors.blue,
                titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
                bottom: TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 5,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(fontSize: 15),
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle: TextStyle(fontSize: 10),
                    tabs: [
                      Tab(
                        iconMargin: EdgeInsets.all(10),
                        icon: Icon(Icons.laptop),
                        text: "Laptop",
                      ),
                      Tab(
                          iconMargin: EdgeInsets.all(10),
                          icon: Icon(Icons.desktop_windows_rounded),
                          text: "PC"),
                      Tab(
                        iconMargin: EdgeInsets.all(10),
                        icon: Icon(Icons.phone_android_rounded),
                        text: "Mobile",
                      )
                    ]),
              ),
              body: Container(
                padding: EdgeInsets.all(10),
                child: TabBarView(children: [
                  Text(
                    "Laptop Page",
                  ),
                  Text("PC Page"),
                  Text("Mobile Page"),
                ]),
              ),
            )));
  }
}
