import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("TextForm Field Validator"),
            ),
            body: Container(
              padding: EdgeInsets.all(10),
              child: Form(
                key: formstate,
                child: Column(children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Field Can't be empty";
                      }
                      if (value.length > 10) {
                        return "Field can't be more than 10";
                      }
                    },
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Field Can't be empty";
                      }
                      if (value.length > 20) {
                        return "Field can't be more than 20";
                      }
                    },
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formstate.currentState!.validate()) {
                        print("Valid");
                      } else {
                        print("Not Valid");
                      }
                    },
                    child: Text("Valid"),
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ]),
              ),
            )));
  }
}
