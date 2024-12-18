import 'package:app/Canidates.dart';
import 'package:app/Selected.dart';
import 'package:app/Widgets/Widget_Button.dart';
import 'package:app/Widgets/Widget_IconButton.dart';
import 'package:app/Widgets/Widget_Navigator.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Active extends StatelessWidget {
  Active({super.key});

  int selectedMembers = 2;
  int totalMembers = 9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          elevation: 2,
          child: Container(
            padding:
          const EdgeInsets.only(left: 8.0, top: 0.0, right: 8, bottom: 4),
            child: Wrap(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Widget_Text.text(
                        message: 'Customer Support Representative',
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
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
                                                Icon(Icons.remove_red_eye),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Widget_Text.text(
                                                message: 'Job View'),
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
                                                message: 'Delete Job'),
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
                Row(
                  children: [
                    Icon(Icons.check_circle),
                    SizedBox(width: 5,),
                    Widget_Text.text(
                      message: '8 candidates selected',
                    ),
                  ],
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 200,
                      child: Card(
                        elevation: 0,
                        color: Colors.white,
                        borderOnForeground: false,
                        semanticContainer: false,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 8 / 11 * 200,
                      child: Card(
                        elevation: 0,
                        color: Colors.yellow,
                        borderOnForeground: false,
                        semanticContainer: false,
                      ),
                    ),
                  ],
                ),
                Widget_Text.text(
                  message: '43 applied for 11 vacancy',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Widget_Text.text(
                      message: 'valid till 24 days',
                      color: Colors.red,
                    ),
                    Widget_Button.button(
                      buttonText: 'view candidates',
                      color: Color.fromRGBO(0, 126, 167, 1),
                      border_color: Colors.transparent,
                      backgroundColor: Colors.blue.shade50,
                      onPressed: () {
                        Widget_Navigator.Navigator_push(
                            context: context, screen: Canidates());
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
