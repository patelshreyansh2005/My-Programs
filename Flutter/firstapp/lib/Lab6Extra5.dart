import 'package:flutter/material.dart';

class Lab6Extra5 extends StatelessWidget {
  const Lab6Extra5({super.key});

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
                    color: Colors.lightGreen,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.limeAccent,
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
                    color: Colors.deepOrange,
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
                                color: Colors.amber,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.amber.shade700,
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
                                color: Colors.indigo,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.indigo.shade700,
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
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.purple.shade700),
                ),
                Expanded(
                  child: Container(color: Colors.purple.shade500),
                ),
                Expanded(
                  child: Container(color: Colors.purple.shade300),
                ),
                Expanded(
                  child: Container(color: Colors.purple.shade100),
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
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.teal.shade600,
                              ),
                            ),
                            Expanded(
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              color: Colors.deepOrange.shade600,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              color: Colors.deepOrange.shade300,
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
                                              color: Colors.lightBlue.shade600,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              color: Colors.lightBlue.shade300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                    color: Colors.red.shade700,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              color: Colors.deepOrange.shade600,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              color: Colors.deepOrange.shade300,
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
                                              color: Colors.lightBlue.shade600,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              color: Colors.lightBlue.shade300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.teal.shade600,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
