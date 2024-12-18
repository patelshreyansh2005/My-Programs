import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget_IconButton {
  Widget_IconButton();

  static IconButton iconButton(
      {required Function() onPressed,
      required IconData icon,
      double? size,
      Color? color}) {
    return IconButton(
      onPressed: onPressed,
      // alignment:Alignment.topLeft,
      icon: Icon(
        icon,
        size: size,
        color: color,
      ),
    );
  }
}
