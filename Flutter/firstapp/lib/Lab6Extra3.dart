import 'package:flutter/material.dart';

class Lab6Extra3 extends StatelessWidget {
  const Lab6Extra3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.yellowAccent,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
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
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.pink,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.amberAccent,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.cyan,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.purpleAccent,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
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
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.orangeAccent,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.tealAccent,
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
                    color: Colors.cyanAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellowAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
