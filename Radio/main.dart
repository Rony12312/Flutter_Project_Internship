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
  String? country;
  int? age;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Radio"),
            ),
            body: Container(
                child: Column(
              children: [
                Text(
                  "Choose Your Country",
                  style: TextStyle(fontSize: 25),
                ),
                RadioListTile(
                    activeColor: Colors.yellow,
                    title: Text("Syria"),
                    value: "Syria",
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.red,
                    title: Text("Egypt"),
                    value: "Egypt",
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.blue,
                    title: Text("UAE"),
                    value: "UAE ",
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      });
                    }),
                Text(
                  "Choose Your Age",
                  style: TextStyle(fontSize: 25),
                ),
                RadioListTile(
                    activeColor: Colors.yellow,
                    title: Text("19"),
                    value: 19,
                    groupValue: age,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.red,
                    title: Text("10"),
                    value: 10,
                    groupValue: age,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.blue,
                    title: Text("15"),
                    value: 15,
                    groupValue: age,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    }),
                Text(
                  "Your country is $country and your age is $age",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ))));
  }
}
