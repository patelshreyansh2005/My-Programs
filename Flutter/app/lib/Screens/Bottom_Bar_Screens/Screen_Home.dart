import 'package:app/JobCard.dart';
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  'Required employees',
  'Last date of application',
  'Categories',
  'Required experience',
  'Gender',
];
int selectedFilter = 0;

class Screen_Home extends StatefulWidget {
  const Screen_Home({super.key});

  @override
  State<Screen_Home> createState() => _Screen_HomeState();
}

class _Screen_HomeState extends State<Screen_Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              tabs: [
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "Recommended",
                ),
                Tab(
                  text: "Other",
                ),
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
                        enableDrag: true,
                        useSafeArea: true,
                        context: context,
                        builder: (context) => Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
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
                                                  padding:
                                                      EdgeInsets.all(28.r),
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
                                                    overflow: TextOverflow.fade,
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
                      children: [

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
                  JobCard(),
                  Text("Recommended"),
                  Text("Other"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
