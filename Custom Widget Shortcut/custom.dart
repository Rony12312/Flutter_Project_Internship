import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imagename;

  const CustomListtile(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "images/$imagename",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text("$name"),
              subtitle: Text("$email"),
              trailing: Text("$date"),
            ),
          ),
        ],
      ),
    ));
  }
}
