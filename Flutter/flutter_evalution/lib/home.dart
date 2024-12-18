import 'package:flutter/material.dart';
import 'package:flutter_evalution/add.dart';
import 'package:flutter_evalution/apis.dart';

import 'edit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Apis apis = Apis();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text("CRUD"),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Add(),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
        body: FutureBuilder(
          future: apis.get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data.toString() != "") {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Text(
                            snapshot.data![index]["id"].toString(),
                          ),
                          Text(
                            snapshot.data![index]["name"].toString(),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Edit(
                                    id: snapshot.data![index]["id"].toString(),
                                    name: snapshot.data![index]["name"],
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () async {
                              await apis.delete(snapshot.data![index]["id"]);
                              setState(() {});
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
