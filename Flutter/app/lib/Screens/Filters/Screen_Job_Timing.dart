import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen_Job_Timing extends StatefulWidget {
  const Screen_Job_Timing({super.key});

  @override
  State<Screen_Job_Timing> createState() => _Screen_Job_TimingState();
}

class _Screen_Job_TimingState extends State<Screen_Job_Timing> {
  @override
  Widget build(BuildContext context) {

    int FromValue = 0;
    int ToValue = 0;

    return Scaffold(
      body: StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) {
          return Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Widget_Text.text(
                  message: 'Select Job Timing:',
                  fontSize: 24.sp,
                  color: Color(0XFF007EA7),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Widget_Text.text(
                        message: 'From',
                        fontSize: 20.sp,
                        color: Color(0XFF007EA7),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0XFF007EA7),
                            )),
                        height: 40.h,
                        // width: 50.w,
                        child: Row(
                          children: [
                            Spacer(),
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                diameterRatio: 0.5,
                                itemExtent: 30,
                                magnification: 4.5,
                                offAxisFraction: 0,
                                physics: FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                  builder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Widget_Text.text(
                                              message: '$index',
                                              color: Colors.black,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          // width: 50,
                                        ),
                                      ],
                                    );
                                  },
                                  childCount: 50,
                                ),
                                controller: FixedExtentScrollController(
                                    initialItem: ToValue),
                                onSelectedItemChanged: (int index) {
                                  // Update the selectedValue when the item is scrolled
                                  ToValue = index;
                                  // Do something with the selected value, e.g., update UI
                                  setState(() {
                                    // Update UI or perform other actions based on the selected value
                                  });
                                },
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Widget_Text.text(message: 'HH')),
                            Expanded(child: Widget_Text.text(message: ':')),
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                diameterRatio: 0.5,
                                itemExtent: 30,
                                magnification: 4.5,
                                offAxisFraction: 0,
                                physics: FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                  builder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Widget_Text.text(
                                              message: '$index',
                                              color: Colors.black,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          // width: 50,
                                        ),
                                      ],
                                    );
                                  },
                                  childCount: 50,
                                ),
                                controller: FixedExtentScrollController(
                                    initialItem: ToValue),
                                onSelectedItemChanged: (int index) {
                                  // Update the selectedValue when the item is scrolled
                                  ToValue = index;
                                  // Do something with the selected value, e.g., update UI
                                  setState(() {
                                    // Update UI or perform other actions based on the selected value
                                  });
                                },
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Widget_Text.text(message: 'MM')),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Widget_Text.text(
                        message: 'To',
                        fontSize: 20.sp,
                        color: Color(0XFF007EA7),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0XFF007EA7),
                            )),
                        height: 40.h,
                        // width: 50.w,
                        child: Row(
                          children: [
                            Spacer(),
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                diameterRatio: 0.5,
                                itemExtent: 30,
                                magnification: 4.5,
                                offAxisFraction: 0,
                                physics: FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                  builder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Widget_Text.text(
                                              message: '$index',
                                              color: Colors.black,
                                              // align: TextAlign.center,
                                            ),
                                          ),
                                          // width: 50,
                                        ),
                                      ],
                                    );
                                  },
                                  childCount: 50,
                                ),
                                controller: FixedExtentScrollController(
                                    initialItem: ToValue),
                                onSelectedItemChanged: (int index) {
                                  // Update the selectedValue when the item is scrolled
                                  ToValue = index;
                                  // Do something with the selected value, e.g., update UI
                                  setState(() {
                                    // Update UI or perform other actions based on the selected value
                                  });
                                },
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Widget_Text.text(message: 'HH')),
                            Expanded(child: Widget_Text.text(message: ':')),
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                diameterRatio: 0.5,
                                itemExtent: 30,
                                magnification: 4.5,
                                offAxisFraction: 0,
                                physics: FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                  builder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Widget_Text.text(
                                              message: '$index',
                                              color: Colors.black,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          // width: 50,
                                        ),
                                      ],
                                    );
                                  },
                                  childCount: 50,
                                ),
                                controller: FixedExtentScrollController(
                                    initialItem: ToValue),
                                onSelectedItemChanged: (int index) {
                                  // Update the selectedValue when the item is scrolled
                                  ToValue = index;
                                  // Do something with the selected value, e.g., update UI
                                  setState(() {
                                    // Update UI or perform other actions based on the selected value
                                  });
                                },
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Widget_Text.text(message: 'MM')),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Widget_Text.text(message: 'FromValue $FromValue'),
                    Spacer(),
                    Widget_Text.text(message: 'ToValue $ToValue'),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
