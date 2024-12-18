import 'package:app/Screens/Bottom_Bar_Screens/Screen_Applies.dart';
import 'package:app/Screens/Bottom_Bar_Screens/Screen_Create_Job.dart';
import 'package:app/Screens/Bottom_Bar_Screens/Screen_Home.dart';
import 'package:app/Screens/Bottom_Bar_Screens/Screen_Message.dart';
import 'package:app/Screens/Bottom_Bar_Screens/Screen_My_Job.dart';
import 'package:app/Utils/Colors_.dart';
import 'package:app/Utils/Dimensions.dart';
import 'package:app/Widgets/Widget_Drawer.dart';
import 'package:app/Widgets/Widget_IconButton.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen_Layout extends StatefulWidget {
  const Screen_Layout({super.key});

  @override
  State<Screen_Layout> createState() => _Screen_LayoutState();
}

List<Widget> bottomBarPages = [
  Screen_Home(),
  Screen_Applies(),
  Screen_Create_Job(),
  Screen_My_Job(),
  Screen_Message(),
];
List<TabItem> tab_Items = [
  TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  TabItem(
    icon: FontAwesomeIcons.briefcase,
    title: 'Applies',
  ),
  TabItem(
    icon: Icons.add_box,
    title: 'Create Job',
  ),
  TabItem(
    icon: FontAwesomeIcons.solidHandshake,
    title: 'My Job',
  ),
  TabItem(
    icon: Icons.message,
    title: 'Message',
  ),
];
int _currentIndex = 0;

class _Screen_LayoutState extends State<Screen_Layout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        drawer: Widget_Drawer.layout_Drawer(context: context),
        body: Column(
          children: [
            _currentIndex != 2
                ? Row(
                    children: [
                      Builder(
                        builder: (context) {
                          return Widget_IconButton.iconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              icon: Icons.account_circle,
                              size: Dimensions.layout_account_circle);
                        },
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors_.searchBox_BackgroundColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.w),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: _currentIndex != 4
                                  ? 'Search Jobs'
                                  : 'Search Groups',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Widget_IconButton.iconButton(
                          onPressed: () {},
                          icon: Icons.notifications,
                          size: Dimensions.notifications)
                    ],
                  )
                : SizedBox(),
            Expanded(child: bottomBarPages[_currentIndex]),
          ],
        ),
        bottomNavigationBar: BottomBarFloating(
          items: tab_Items,
          backgroundColor: Colors_.bottomNavigationBar_backgroundColor,
          color: Colors_.bottomNavigationBar_color,
          colorSelected: Colors_.bottomNavigationBar_colorSelected,
          indexSelected: _currentIndex,
          onTap: (int index) => setState(
            () {
              _currentIndex = index;
            },
          ),
        ),
      ),
    );
  }
}
