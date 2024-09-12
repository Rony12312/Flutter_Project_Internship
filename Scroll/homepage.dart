import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? scrollController;

  void initState() {
    scrollController = ScrollController();
    scrollController!.addListener(() {
      print(scrollController!.offset);
    });
    super.initState();
  }

  void dispose() {
    scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Scroll",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: ListView(
          controller: scrollController,
          children: [
            MaterialButton(
              onPressed: () {
                scrollController!.animateTo(9433,
                    duration: const Duration(seconds: 1), curve: Curves.ease);
              },
              child: Text("Jump To Buttom"),
            ),
            ...List.generate(
                100,
                (index) => Container(
                      alignment: Alignment.center,
                      height: 100,
                      child: Text(
                        "$index",
                        style: const TextStyle(fontSize: 30),
                      ),
                      color: index.isEven ? Colors.blue : Colors.red,
                    )),
            MaterialButton(
              onPressed: () {
                scrollController!.animateTo(0,
                    duration: Duration(seconds: 1), curve: Curves.ease);
              },
              child: Text("Jump To Top"),
            )
          ],
        ));
  }
}
