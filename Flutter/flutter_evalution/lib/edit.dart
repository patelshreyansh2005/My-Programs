import 'package:flutter/material.dart';
import 'package:flutter_evalution/apis.dart';

import 'home.dart';

class Edit extends StatefulWidget {
  final String name;
  final String id;

  Edit({super.key, required this.id, required this.name});

  @override
  State<Edit> createState() => _EditState(id: id, name: name);
}

class _EditState extends State<Edit> {
  Apis apis = Apis();
  final String name;
  final String id;

  _EditState({required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController(text: this.name);
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
            decoration: const InputDecoration(
              labelText: 'Enter Name',
              hintText: 'Enter Your Name',
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await apis.update(name.text, int.parse(id));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            child: const Text("submit"),
          ),
        ],
      ),
    );
  }
}
