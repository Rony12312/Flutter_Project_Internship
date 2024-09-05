import 'package:flutter/material.dart';
import 'package:untitled7/contact.dart';
import 'package:untitled7/homepage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Us",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "About Us",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Text("Go to Home Page"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              },
              child: Text("Contact Us"),
            ),
          )
        ],
      ),
    );
  }
}
