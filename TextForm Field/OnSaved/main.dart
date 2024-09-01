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
  String? username;
  String? phone;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("TextForm Field OnSaved"),
            ),
            body: Container(
              padding: EdgeInsets.all(10),
              child: Form(
                key: formstate,
                child: Column(children: [
                  TextFormField(
                    onSaved: (val) {
                      username = val;
                    },
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Field Can't be empty";
                      }
                      if (value.length > 20) {
                        return "username can't be more than 20";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    onSaved: (val) {
                      phone = val;
                    },
                    decoration: InputDecoration(
                      hintText: "phone",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Field Can't be empty";
                      }
                      if (value.length < 9) {
                        return "Phone can't be less than 9";
                      }
                      if (value.length > 12) {
                        return "Field can't be more than 12";
                      }
                      return null;
                    },
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formstate.currentState!.validate()) {
                        formstate.currentState!.save();
                        print(username);
                        print(phone);
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
