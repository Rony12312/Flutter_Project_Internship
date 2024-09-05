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

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? tabController;

  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('TabBar'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        bottom: TabBar(
            controller: tabController,
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
        child: TabBarView(controller: tabController, children: [
          Column(
            children: [
              Text("Laptop Page"),
              MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(1);
                  },
                  child: Text("Goto PC Page"))
            ],
          ),
          Column(
            children: [
              Text("Laptop Page"),
              MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(2);
                  },
                  child: Text("Goto Mobile Page"))
            ],
          ),
          Column(
            children: [
              Text("Laptop Page"),
              MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(1);
                  },
                  child: Text("Goto PC Page")),
              MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(0);
                  },
                  child: Text("Goto Laptop Page"))
            ],
          ),
        ]),
      ),
    ));
  }
}
