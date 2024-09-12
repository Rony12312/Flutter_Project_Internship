import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                popupMenuTheme: PopupMenuThemeData(
                  color: Colors.white,
                ),
              ),
              child: PopupMenuButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                // Change the icon color
                onOpened: () {
                  print("open");
                },
                onCanceled: () {
                  print("canceled");
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("One"),
                    onTap: () {
                      print("One");
                    },
                  ),
                  PopupMenuItem(
                    child: Text("Two"),
                    onTap: () {
                      print("Two");
                    },
                  ),
                ],
              ),
            )
          ],
          title: const Text(
            "Pop up Menu Button",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: ListView(
          children: [],
        ));
  }
}
