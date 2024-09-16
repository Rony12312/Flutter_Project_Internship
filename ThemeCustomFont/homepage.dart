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
          title: Text(
            "Theme",
          ),
        ),
        body: ListView(
          children: [
            Text(
              "Theme",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              "Theme",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Theme",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ));
  }
}
