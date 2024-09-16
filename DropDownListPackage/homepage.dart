import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/package/apptextfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController country = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Drop Down List",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: ListView(
          children: [
            AppTextField(
                cities: [
                  SelectedListItem(name: "Syria"),
                  SelectedListItem(name: "UAE"),
                  SelectedListItem(name: "Oman"),
                ],
                textEditingController: country,
                title: "Select Country",
                hint: "Country",
                isCitySelected: true),
            AppTextField(
                cities: [
                  SelectedListItem(name: "10"),
                  SelectedListItem(name: "20"),
                  SelectedListItem(name: "30"),
                ],
                textEditingController: age,
                title: "Select Age",
                hint: "Age",
                isCitySelected: true),
          ],
        ));
  }
}
