import 'package:app/Widgets/Widget_Button.dart';
import 'package:app/Widgets/Widget_IconButton.dart';
import 'package:app/Widgets/Widget_Navigator.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:app/Widgets/Widget_Welcome_Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Selected extends StatefulWidget {
  const Selected({super.key});

  @override
  State<Selected> createState() => _SelectedState();
}

class _SelectedState extends State<Selected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Card(
          color: Colors.white,
          shadowColor:Colors.white,
          elevation: 2,
          child: Container(
            padding:
                const EdgeInsets.only(left: 8.0, top: 8.0, right: 8, bottom: 4),
            child: Stack(
              children: [
                Wrap(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/welcome_image.png'),
                          radius: 30,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Widget_Text.text(
                                  message: 'Patel Shareyansh PankajBhai'),
                              Widget_Text.text(
                                  message: '70 years of expirience'),
                              Widget_Text.text(message: 'Male'),
                              Row(
                                children: [
                                  Widget_Button.button(
                                    buttonText: 'Reject',
                                    color: Color.fromRGBO(255, 80, 80, 1),
                                    border_color: Colors.transparent,
                                    backgroundColor: Colors.red.shade50,
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Widget_Button.button(
                                    buttonText: 'View Application',
                                    color: Color.fromRGBO(0, 126, 167, 1),
                                    border_color: Colors.transparent,
                                    backgroundColor: Colors.blue.shade50,
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: -10,
                  right: -18,
                  child: Widget_IconButton.iconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: false,
                        enableDrag: true,
                        showDragHandle: true,
                        context: context,
                        builder: (context) {
                          return Container(
                            color: Colors.white,
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child:
                                        Icon(Icons.bookmark_border),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Widget_Text.text(
                                            message: 'Save'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Icon(Icons.share),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Widget_Text.text(
                                            message: 'Share via'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Icon(Icons.delete),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Widget_Text.text(
                                            message: 'Delete'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icons.more_vert,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
