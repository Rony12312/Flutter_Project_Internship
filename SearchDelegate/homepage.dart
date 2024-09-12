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
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomSearch());
                },
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ))
          ],
          title: const Text(
            "Search Delegate",
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: ListView(
          children: [],
        ));
  }
}

class CustomSearch extends SearchDelegate<String> {
  List username = ["Messi", "Suarez", "Neymar", "Xavi", "Iniesta", "Busquets"];
  List? filterList;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "null");
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result: $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  username[index],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
        itemCount: username.length,
      );
    } else {
      filterList = username
          .where(
              (element) => element.toLowerCase().contains(query.toLowerCase()))
          .toList();
      return ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  filterList?[index],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
        itemCount: filterList!.length,
      );
    }
  }
}
