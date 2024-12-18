import 'package:app/Widgets/Widget_IconButton.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:app/Widgets/Widget_Welcome_Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 2,
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Wrap(
          children: [
            Stack(
              children: [
                Widget_Welcome_Image.Welcome_Image(
                    height: 200, width: double.infinity),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    child: Widget_Text.text(message: '3 days reaming'),
                  ),
                ),
                Positioned(
                  top: -10,
                  right: -10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                      ),
                    ),

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
                                  SizedBox(width: 30,),

                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icons.more_vert,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Widget_Text.text(
                            message: 'Customer Support Representative',
                            fontSize: 20),
                        Widget_Text.text(
                          message: 'Google',
                          fontSize: 15,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee),
                              Expanded(
                                child: Widget_Text.text(
                                  message: '1000000/Month',
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.timelapse),
                              Expanded(
                                child: Widget_Text.text(
                                  message: '9:00  - 21:00',
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_sharp),
                      Expanded(
                        child: Widget_Text.text(
                          message:
                              'Rajkot,Gujrat GujratGujratGujratGujratGujratGujratGujratGujratGujratGujratGujratGujratGujratGujratGujrat',
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
