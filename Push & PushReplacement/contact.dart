import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "Contact",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}
