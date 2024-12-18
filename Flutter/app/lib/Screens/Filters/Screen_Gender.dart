import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen_Gender extends StatefulWidget {
  const Screen_Gender({super.key});

  @override
  State<Screen_Gender> createState() => _Screen_GenderState();
}

class _Screen_GenderState extends State<Screen_Gender> {
  List<bool> isGenderselectList = [false, false, true, false];

  InkWell selectGenderIcon(String genderName, int selectGenderIndex) {
    return InkWell(
      onTap: () {
        setState(() {
          for (int i = 0; i < isGenderselectList.length; i++) {
            isGenderselectList[i] = false;
          }
          isGenderselectList[selectGenderIndex] = true;
        });
      },
      child: Row(
        children: [
          Icon(
            isGenderselectList[selectGenderIndex]
                ? Icons.radio_button_checked
                : Icons.radio_button_unchecked,
          ),
          SizedBox(
            width: 5.w,
          ),
          Widget_Text.text(message: genderName)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Widget_Text.text(message: 'Select Gender'),
          SizedBox(height: 30.h),
          selectGenderIcon('Man', 0),
          SizedBox(height: 20.h),
          selectGenderIcon('Women', 1),
          SizedBox(height: 20.h),
          selectGenderIcon('Both', 2),
          SizedBox(height: 20.h),
          selectGenderIcon('Other', 3),
        ],
      ),
    );
  }
}
