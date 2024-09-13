import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool loading = false;
  List data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "HTTP & API",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () async {
                  loading = true;
                  setState(() {});
                  var response = await get(
                      Uri.parse("https://jsonplaceholder.typicode.com/posts"));
                  var responsebody = jsonDecode(response.body);
                  data.addAll(responsebody);
                  loading = false;
                  setState(() {});
                },
                child: Text("Http Request"),
              ),
            ),
            if (loading)
              Center(
                child: CircularProgressIndicator(),
              ),
            ...List.generate(
                data.length,
                (index) => Card(
                      child: ListTile(
                        title: Text("title: ${data[index]['title']}"),
                        subtitle: Text("body: ${data[index]['body']}"),
                      ),
                    ))
          ],
        ));
  }
}
