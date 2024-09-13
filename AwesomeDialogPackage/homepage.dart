import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Package",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  AwesomeDialog(
                    btnOkIcon: Icons.check_circle,
                    btnCancelIcon: Icons.cancel_outlined,
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.bottomSlide,
                    title: 'Success',
                    desc: 'Signup Successfull',
                    btnOkOnPress: () {
                      print("Ok");
                    },
                    btnCancelOnPress: () {
                      print("Cancel");
                    },
                  ).show();
                },
                child: Text("Show Dialog"),
              ),
            )
          ],
        ));
  }
}
