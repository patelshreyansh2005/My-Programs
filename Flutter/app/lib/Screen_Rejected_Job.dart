import 'package:app/Widgets/Widget_IconButton.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:app/Widgets/Widget_Welcome_Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen_Rejected_Job extends StatelessWidget {
  const Screen_Rejected_Job({super.key});

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
                Positioned(
                  top: -6,
                  right: -6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                      ),
                    ),

                    child: Widget_IconButton.iconButton(
                      onPressed: () {},
                      icon: Icons.delete,
                      size: 25,
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
