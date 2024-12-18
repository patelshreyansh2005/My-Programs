import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lab7A extends StatefulWidget {
  const Lab7A({super.key});

  @override
  State<Lab7A> createState() => _Lab7AState();
}

class _Lab7AState extends State<Lab7A> {
  TextEditingController controller = TextEditingController();

  Widget MyFont(String name) {
    return Text(
      name,
      style: GoogleFonts.aBeeZee(
        color: Colors.lightBlue,
        fontSize: 20,
      ),
    );
  }

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        title: const Text('Hello World'),
        titleTextStyle: TextStyle(
          color: Colors.deepPurpleAccent.shade700,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: name==""?MyFont("HELLO"):MyFont(name),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                TextField(
                  controller: controller,
                  style: const TextStyle(
                    color: Colors.purpleAccent,
                  ),
                  decoration: InputDecoration(
                    labelText: "Enter name",
                    hintText: "Enter your name here",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent.shade700,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent.shade100
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(
                          20,
                        ),
                        bottomRight: Radius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    setState(
                          () {
                        name = controller.text;
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  child: Container(
                    color: Colors.blue,
                    height: 25,
                    width: 100,
                    child: Text(
                      'Reset',
                    ),
                    alignment: Alignment.center
                  ),
                  onTap: () {
                    setState(
                      () {
                        name = "HELLO";
                        controller.text = "";
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
