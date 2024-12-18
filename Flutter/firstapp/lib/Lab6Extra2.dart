import 'package:flutter/material.dart';

class Lab6Extra2 extends StatelessWidget {
  const Lab6Extra2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.lightBlueAccent,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.greenAccent,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.cyan,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
