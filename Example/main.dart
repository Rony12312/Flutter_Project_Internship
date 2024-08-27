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
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color(0xffe6f0fa)),
                    width: 1000,
                    padding: EdgeInsets.all(10),
                    child: Text("Rony Dawoud",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                            fontSize: 18)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color(0xffe6f0fa)),
                    width: 1000,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: Text(
                        "Lorem ipsum odor amet, consectetuer adipiscing elit. Dolor velit laoreet non; ornare tempus magnis condimentum.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 18)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Color(0xffe6f0fa)),
                      width: 1000,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ]),
                            Text("170 Reviews")
                          ])),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Color(0xffe6f0fa)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.free_breakfast, color: Colors.green),
                              Text("Prep"),
                              Container(height: 8),
                              Text("25 mins")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.green),
                              Text("Cook"),
                              Container(height: 8),
                              Text("1 Hr")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant, color: Colors.green),
                              Text("Feeds"),
                              Container(height: 8),
                              Text("4-6")
                            ],
                          )
                        ],
                      ))
                ]))));
  }
}
