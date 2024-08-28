import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("StatefulWidget & SetState"),
            ),
            body: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        status = true;
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                  if (status == true)
                    Icon(Icons.star)
                  else
                    Icon(Icons.star_outline),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        status = false;
                      });
                    },
                    icon: const Icon(Icons.remove),
                  )
                ],
              ),
            )));
  }
}
