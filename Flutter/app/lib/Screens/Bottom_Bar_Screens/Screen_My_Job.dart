import 'package:app/Active.dart';
import 'package:app/Screens/Filters/Screen_Categories.dart';
import 'package:app/Screens/Filters/Screen_Gender.dart';
import 'package:app/Screens/Filters/Screen_Job_Timing.dart';
import 'package:app/Screens/Filters/Screen_Last_Date_Of_Application.dart';
import 'package:app/Screens/Filters/Screen_Location.dart';
import 'package:app/Screens/Filters/Screen_Required_Employees.dart';
import 'package:app/Screens/Filters/Screen_Required_Experience.dart';
import 'package:app/Screens/Filters/Screen_Salary.dart';
import 'package:app/Utils/Colors_.dart';
import 'package:app/Utils/Dimensions.dart';
import 'package:app/Widgets/Widget_Button.dart';
import 'package:app/Widgets/Widget_IconButton.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen_My_Job extends StatefulWidget {
  const Screen_My_Job({super.key});

  @override
  State<Screen_My_Job> createState() => _Screen_My_JobState();
}

List<bool> selectFilterList = [
  true,
  false,
  false,
  false,
  false,
  false,
  false,
  false
];
List<Widget> filterWidgetList = [
  Screen_Location(),
  Screen_Salary(),
  Screen_Job_Timing(),
  Screen_Required_Employees(),
  Screen_Last_Date_Of_Application(),
  Screen_Categories(),
  Screen_Required_Experience(),
  Screen_Gender(),
];
bool isFilterOpen = false;
List<String> filterList = [
  'Location',
  'Salary',
  'Job Timing',
  'Required\nemployees',
  'Last date of\napplication',
  'Categories',
  'Required\nexperience',
  'Gender',
];
int selectedFilter = 0;
class _Screen_My_JobState extends State<Screen_My_Job> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'Active'),
                Tab(text: 'Expire'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.r),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Widget_Text.text(
                      message: "100 Popular Jobs",
                      fontSize: 18.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        enableDrag: false,
                        useSafeArea: true,
                        context: context,
                        builder: (context) => Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Widget_Text.text(
                                    message: 'Filter Jobs',
                                    fontSize: 25.sp,
                                  ),
                                  Widget_IconButton.iconButton(
                                      onPressed: () => Navigator.pop(context),
                                      icon: Icons.close)
                                ],
                              ),
                              Divider(),
                              Expanded(
                                child: StatefulBuilder(
                                  builder: (context, setState) {
                                    return Row(
                                      children: [
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: filterList.length,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                onTap: () {
                                                  setState(
                                                        () {
                                                      for (int i = 0;
                                                      i <
                                                          selectFilterList
                                                              .length;
                                                      i++) {
                                                        selectFilterList[i] =
                                                        false;
                                                      }
                                                      selectedFilter = index;
                                                      selectFilterList[
                                                      index] = true;
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  height: Dimensions
                                                      .filterBox_Height,
                                                  width: Dimensions
                                                      .filterBox_Width,
                                                  padding:
                                                  EdgeInsets.all(10.r),
                                                  decoration: BoxDecoration(
                                                    border: selectFilterList[
                                                    index]
                                                        ? BorderDirectional(
                                                      start: BorderSide(
                                                        color: Colors_
                                                            .Selected_FilterBox_VerticalLine,
                                                        width: Dimensions
                                                            .Selected_FilterBox_VerticalLine_Width,
                                                      ),
                                                    )
                                                        : const BorderDirectional(),
                                                    color: selectFilterList[
                                                    index]
                                                        ? Colors_
                                                        .Selected_FilterBox
                                                        : Colors_
                                                        .Unselected_FilterBox,
                                                  ),
                                                  child: Widget_Text.text(
                                                      message:
                                                      filterList[index]),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: filterWidgetList[
                                            selectedFilter]),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.r),
                                child: Row(

                                  children: [
                                    Expanded(
                                      child: Widget_Button.button(
                                        buttonText: 'ClearFilter',
                                        backgroundColor: Colors_.button_Color,
                                        color: Colors_.button_Text_Color,
                                        onPressed: () {},
                                      ),
                                    ),

                                    Expanded(
                                      child: Widget_Button.button(
                                        buttonText: 'show 196 Result',
                                        backgroundColor: Colors_.button_Color,
                                        color: Colors_.button_Text_Color,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // IconButton(onPressed: () {
                        //
                        // }, icon: Icons.filter)
                        Widget_IconButton.iconButton(
                            onPressed: () {},
                            icon: FontAwesomeIcons.filter,
                            size: 20),
                        Widget_Text.text(
                          message: "Filters",
                          fontSize: 18.sp,
                        ),
                        isFilterOpen
                            ? Icon(
                          Icons.keyboard_arrow_up_sharp,
                          size: Dimensions.keyboard_arrow_sharp_Size,
                        )
                            : Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: Dimensions.keyboard_arrow_sharp_Size,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Active(),
                  Widget_Text.text(message: 'Expire')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
