import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  void initState() {
    print("============PageOne InitState");
    super.initState();
  }

  void dispose() {
    print("============PageOne Dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page One",
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("homepage");
              },
              child: Text("Go to homepage"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("pagetwo");
              },
              child: Text("Go to page 2"),
            )
          ],
        ),
      ),
    );
  }
}
