import 'package:flutter/material.dart';

class Lab6Extra4 extends StatelessWidget {
  const Lab6Extra4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
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
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(color: Colors.lightBlueAccent),
                      ),
                      Expanded(
                        child: Container(color: Colors.deepPurpleAccent),
                      ),
                      Expanded(
                        child: Container(color: Colors.lightGreenAccent),
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
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.pink,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.purple,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.yellow,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.teal,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.purple,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.yellow,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.purpleAccent,
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
                        flex: 1,
                        child: Container(
                          color: Colors.brown,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.lightGreenAccent,
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
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(color: Colors.lightBlue),
                      ),
                      Expanded(
                        child: Container(color: Colors.deepOrange),
                      ),
                      Expanded(
                        child: Container(color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(color: Colors.purpleAccent),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.grey),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(color: Colors.limeAccent),
                            ),
                            Expanded(
                              child: Container(color: Colors.deepOrange),
                            ),
                            Expanded(
                              child: Container(color: Colors.lightGreen),
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
        ],
      ),
    );
  }
}
