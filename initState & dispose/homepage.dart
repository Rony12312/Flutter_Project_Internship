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
          title: const Text(
            "Initial State & Dispose",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: ListView(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("pageone");
              },
              child: Text("Go to page 1"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("pagetwo");
              },
              child: Text("Go to page 2"),
            )
          ],
        ));
  }
}
