import 'package:flutter/material.dart';

class Lab6B1 extends StatefulWidget {
  const Lab6B1({super.key});

  @override
  State<Lab6B1> createState() => _Lab6B1State();
}

class _Lab6B1State extends State<Lab6B1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.lightGreenAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.lightGreen,
              )),
              Expanded(
                  child: Container(
                color: Colors.deepPurpleAccent,
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.greenAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.blue,
              )),
              Expanded(
                  child: Container(
                color: Colors.redAccent,
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.amberAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.cyan,
              )),
              Expanded(
                  child: Container(
                color: Colors.pink,
              ))
            ],
          ),
        )
      ]),
    );
  }
}
