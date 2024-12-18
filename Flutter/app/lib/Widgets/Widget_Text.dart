import 'package:flutter/cupertino.dart';

class Widget_Text {
  Widget_Text();

  static Text text({required String message,
    double? fontSize,
    Color? color,
    TextOverflow? overflow = TextOverflow.ellipsis,
    int? maxLines, TextAlign? textAlign,
    FontWeight? fontWeight,
  }) {
    return Text(
      message,
      style: TextStyle(fontSize: fontSize, color: color,fontWeight: fontWeight),
      maxLines: maxLines,
      // softWrap: true,
      overflow: overflow,
      textAlign:textAlign,
    );
  }
}
