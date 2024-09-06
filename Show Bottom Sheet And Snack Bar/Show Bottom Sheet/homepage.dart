import 'dart:io';

import 'package:flutter/material.dart';
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
                color: Colors.blue,
                onPressed: () {
                  Sccaffoldkey.currentState!
                      .showBottomSheet((context) => Container(
                            padding: EdgeInsets.all(10),
                            height: 100,
                            width: 1000,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Text(
                                  "Choose Image",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Container(
                                  height: 5,
                                ),
                                Text("From Gallery",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                                Text(
                                  "From Camera",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                          ));
                },
                child: Text(
                  "Show",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
