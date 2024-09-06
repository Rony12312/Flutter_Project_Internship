import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled7/aboutus.dart';
import 'package:untitled7/contact.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  GlobalKey<ScaffoldState> Sccaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: Sccaffoldkey,
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        body: ListView(
          children: [
            Center(
              child: MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 2),
                      action: SnackBarAction(
                          label: "Ok",
                          onPressed: () {},
                          textColor: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      content: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: 20,
                          width: 20,
                          child: Text("Copied to Clipboard"))));
                },
                child: Text(
                  "Copy",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            )
          ],
        ));
  }
}
