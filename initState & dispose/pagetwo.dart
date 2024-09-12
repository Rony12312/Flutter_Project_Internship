import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  void initState() {
    print("============PageTwo InitState");
    super.initState();
  }

  @override
  void dispose() {
    print("============PageTwo Dispose");
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
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("homepage", (route) => false);
              },
              child: Text("Go to homepage"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("pageone");
              },
              child: Text("Go to page 1"),
            )
          ],
        ),
      ),
    );
  }
}
