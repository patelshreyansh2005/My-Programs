import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget_FloatingSnackBar {
  Widget_FloatingSnackBar();

  static void show_Error_Message(String message, BuildContext context,
      {backgroundColor = Colors.white, textColor = Colors.black}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Widget_Text.text(message: message, color: textColor),
        backgroundColor: backgroundColor,
        showCloseIcon: true,
        closeIconColor: textColor,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
