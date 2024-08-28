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
              title: const Text("Example App"),
            ),
            body: Container(
            padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  MaterialButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    minWidth: 200,
                    height: 40,
                    onLongPress: (){
                      print("Long Press");
                    } ,
                    onPressed: (){
                    print("Hello World");
                  },child: Text("Button"),
                  )

                ]
              ),


            )));
  }
}
