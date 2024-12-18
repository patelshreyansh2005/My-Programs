import 'package:flutter/material.dart';

class Lab6A2 extends StatefulWidget {
  const Lab6A2({super.key});

  @override
  State<Lab6A2> createState() => _Lab6A2State();
}

class _Lab6A2State extends State<Lab6A2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(child: Container(color: Colors.deepOrange)),
        Expanded(child: Container(color: Colors.deepPurpleAccent)),
        Expanded(child: Container(color: Colors.lightGreenAccent))
      ]),
    );
  }
}
