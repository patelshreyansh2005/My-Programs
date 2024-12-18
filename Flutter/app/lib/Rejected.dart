import 'package:flutter/material.dart';
import 'package:app/Widgets/Widget_Button.dart';
import 'package:app/Widgets/Widget_IconButton.dart';
import 'package:app/Widgets/Widget_Navigator.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:app/Widgets/Widget_Welcome_Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rejected extends StatefulWidget {
  const Rejected({super.key});

  @override
  State<Rejected> createState() => _RejectedState();
}

class _RejectedState extends State<Rejected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white, // Set the color to white
                elevation: 2,
                  shadowColor:Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8, bottom: 4),
                  child: Stack(
                    children: [
                      Wrap(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/welcome_image.png'),
                                radius: 30,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Widget_Text.text(message: 'Patel Shareyansh PankajBhai'),
                                    Widget_Text.text(message: '70 years of expirience'),
                                    Widget_Text.text(message: 'abcdefghijusgfuis@gmail.com'),
                                    Row(
                                      children: [
                                        Widget_Button.button(
                                          buttonText: 'Select',
                                          color: Color.fromRGBO(0, 180, 0, 1),
                                          border_color: Colors.transparent,
                                          backgroundColor: Colors.green.shade50,
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
                          onPressed: () {},
                          icon: Icons.push_pin,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Card(
                color: Color.fromRGBO(240, 255, 255, 1),
                // color: Colors.white,
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
                                    SizedBox(
                                      width:230.w,
                                      child: Widget_Text.text(
                                          message: 'Patel Shareyansh ShareyanshBhai',fontSize: 18,fontWeight: FontWeight.w600),
                                    ),
                                    Widget_Text.text(
                                        message: '70 years of expirience'),
                                    SizedBox(height: 2.5.h,),
                                    Widget_Text.text(
                                        message: 'abcdefghijusgfuis@gmail.com'),
                                    Row(
                                      children: [
                                        Widget_Button.button(
                                          buttonText: 'Select',
                                          color: Color.fromRGBO(0, 180, 0, 1),
                                          border_color: Colors.transparent,
                                          backgroundColor: Colors.green.shade50,
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
                          onPressed: () {},
                          icon: Icons.push_pin_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
