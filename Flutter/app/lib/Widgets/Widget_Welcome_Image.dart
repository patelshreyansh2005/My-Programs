import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget_Welcome_Image {
  Widget_Welcome_Image();

  static Widget Welcome_Image({double? width, double? height}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)), // Adjust the value as needed
      child: Image.asset(
        'assets/welcome_image.png',
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
