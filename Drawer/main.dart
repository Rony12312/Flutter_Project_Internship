import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
          child: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset("images/image.jpg", fit: BoxFit.cover),
                    )),
                Expanded(
                    child: ListTile(
                  title: Text("UserName"),
                  subtitle: Text("example@gmail.com"),
                ))
              ],
            ),
            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text("Account"),
              leading: Icon(Icons.account_circle),
              onTap: () {},
            ),
            ListTile(
              title: Text("Order"),
              leading: Icon(Icons.shopping_cart),
              onTap: () {},
            ),
            ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
            ListTile(
              title: Text("About Us"),
              leading: Icon(Icons.info),
              onTap: () {},
            ),
            ListTile(
              title: Text("Sign Out"),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        ),
      )),
      appBar: AppBar(
        title: const Text('Drawer'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Container(),
    ));
  }
}
