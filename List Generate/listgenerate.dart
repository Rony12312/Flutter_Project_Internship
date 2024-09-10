import 'package:flutter/material.dart';

class ListGenerate extends StatefulWidget {
  const ListGenerate({super.key});

  @override
  State<ListGenerate> createState() => _ListGenerateState();
}

class _ListGenerateState extends State<ListGenerate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "List Generate",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        body: ListView(
          children: [
            ...List.generate(
                125,
                (index) => Text(
                      "${1900 + index}",
                      style: TextStyle(fontSize: 30),
                    ))
          ],
        ));
  }
}
