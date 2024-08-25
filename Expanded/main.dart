import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Responsive and Expanded"),
            ),
            body: Container(
                child: Row(children: [
           Expanded(child:    Container(
                color: Colors.blue,
                height: 100,
           )
              ),

          Expanded(child:    Container(
            color: Colors.red,
            height: 100,
          )
          ),
                  Expanded(child:    Container(
                    color: Colors.yellow,
                    height: 100,
                  )
                  ),

                  Expanded(child:    Container(
                    color: Colors.blue,
                    height: 100,
                  )
                  ),
            ]))));
  }
}
