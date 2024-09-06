import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "Contact",
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
                    MaterialPageRoute(builder: (context) => Contact()));
              },
              child: Text("Go to About Us"),
            ),
          )
        ],
      ),
    );
  }
}
