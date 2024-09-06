import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled7/aboutus.dart';
import 'package:untitled7/contact.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  showDialog(
                    barrierDismissible: true,
                    context: context, builder: (context) {
                 return AlertDialog(
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                   title: Text("Alert"),
                   content: Text("Do you want to exit the app"),
                   actions: [
                    TextButton(onPressed: () {
                      exit(0);
                    }, child: Text("Yes")),
                     TextButton(onPressed: () {
                       Navigator.of(context).pop();
                     }, child: Text("Cancel")),
                   
                 ]);
                 
                });

            },
            child: Text("Show Alert",style: TextStyle(color: Colors.white),),),
          )


        ],

      )
    );
  }
}
