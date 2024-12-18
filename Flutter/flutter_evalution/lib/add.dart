import 'package:flutter/material.dart';
import 'package:flutter_evalution/apis.dart';

import 'home.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  Apis apis = Apis();

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    return SafeArea(
      child: Scaffold(
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
                await apis.insert(name.text);
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
      ),
    );
  }
}
