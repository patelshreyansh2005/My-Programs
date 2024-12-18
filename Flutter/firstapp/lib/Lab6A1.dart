import 'package:flutter/material.dart';

class Lab6A1 extends StatefulWidget {
  const Lab6A1({super.key});

  @override
  State<Lab6A1> createState() => _Lab6A1State();
}

class _Lab6A1State extends State<Lab6A1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.redAccent)),
          Expanded(child: Container(color: Colors.blueAccent)),
          Expanded(child: Container(color: Colors.greenAccent)),
        ],
      ),
    );
  }
}
