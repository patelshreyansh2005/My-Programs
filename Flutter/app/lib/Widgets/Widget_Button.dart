import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/Utils/Dimensions.dart';

class Widget_Button {
  Widget_Button();

  static SizedBox button({
    required String buttonText,
    // Color backgroundColor = Color(0XFF007EA7),
    Color backgroundColor = const Color.fromRGBO(
        0, 126, 167, 1), // Default color using Color.fromRGBO
    double? height,
    double? width,
    required Function() onPressed,
    double? elevation,
    double? fontSize,
    Color? color,
    double? color_opacity = 1,
    Color? border_color = const Color.fromRGBO(0, 126, 167, 1),
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor.withOpacity(color_opacity!),
          ),
          elevation: MaterialStateProperty.all(elevation),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              side: BorderSide(color: border_color!),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          shadowColor: MaterialStateProperty.all<Color>(
              Colors.transparent), // Remove shadow
        ),
        onPressed: onPressed,
        child: Widget_Text.text(
            message: buttonText, fontSize: fontSize, color: color),
      ),
    );
  }
}
