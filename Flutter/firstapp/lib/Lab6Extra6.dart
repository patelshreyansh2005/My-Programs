import 'package:flutter/material.dart';

class Lab6Extra6 extends StatelessWidget {
  const Lab6Extra6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.red.shade800,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.red.shade500,
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
                                      color: Colors.lightGreen.shade800,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.lightGreen.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.amber,
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
                    color: Colors.green.shade600,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.deepOrange.shade300,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.deepOrange.shade600,
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
                                color: Colors.pink.shade600,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.pink.shade300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green.shade400,
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
                    color: Colors.purple.shade600,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple.shade500,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple.shade400,
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
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.deepOrange.shade300,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.deepOrange.shade600,
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
                                      color: Colors.pink.shade600,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.pink.shade300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent.shade700,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent.shade400,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.lime.shade800,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.lime.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            color: Colors.deepOrange.shade300,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            color: Colors.deepOrange.shade600,
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
                                            color: Colors.pink.shade600,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            color: Colors.pink.shade300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.red,
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
        ],
      ),
    );
  }
}