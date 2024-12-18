import 'package:flutter/material.dart';

class Widget_Navigator {
  Widget_Navigator();

  static void Navigator_push({required BuildContext context,required Widget screen}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
