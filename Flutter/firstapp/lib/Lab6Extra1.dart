import 'package:flutter/material.dart';

class Lab6Extra1 extends StatelessWidget {
  const Lab6Extra1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.blue,
                )),
                Expanded(
                    child: Container(
                  color: Colors.green,
                )),
                Expanded(
                    child: Container(
                  color: Colors.grey,
                ))
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.pink,
                )),
                Expanded(
                    child: Container(
                  color: Colors.purple,
                )),
                Expanded(
                    child: Container(
                  color: Colors.transparent,
                ))
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.red,
                )),
                Expanded(
                    child: Container(
                  color: Colors.yellow,
                )),
                Expanded(
                    child: Container(
                  color: Colors.transparent,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
