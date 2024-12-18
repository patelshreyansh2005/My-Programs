import 'package:flutter/material.dart';

class Lab6B2 extends StatefulWidget {
  const Lab6B2({super.key});

  @override
  State<Lab6B2> createState() => _Lab6B2State();
}

class _Lab6B2State extends State<Lab6B2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.amberAccent,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.cyan,
                  )),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.greenAccent,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepPurpleAccent,
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  )),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.deepOrangeAccent,
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.orangeAccent,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
