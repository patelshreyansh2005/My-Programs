import 'package:app/Functions/Function_Shared_Preferences.dart';
import 'package:app/Screens/Screen_Welcome.dart';
import 'package:app/Utils/Colors_.dart';
import 'package:app/Utils/Dimensions.dart';
import 'package:app/Widgets/Widget_Navigator.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Widget_Drawer {
  Widget_Drawer();

  static Drawer layout_Drawer({required BuildContext context}) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 240.h,
            child: DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 127.0.h,
                  ),
                  Widget_Text.text(message: 'Smit Vaghela'),
                  Row(
                    children: [
                      Widget_Text.text(message: 'View Profile'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Widget_Text.text(message: 'Share'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark_outlined),
            title: Widget_Text.text(message: 'Saved Jobs'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_rounded),
            title: Widget_Text.text(message: 'About Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.red,),
            title: Widget_Text.text(message: 'Logout',color: Colors.red),
            onTap: () async {
              await Function_Shared_Preferences.remove_Shared_Preferences();
              Widget_Navigator.Navigator_push(
                  context: context, screen: Screen_Welcome());
            },
          ),
          ListTile(
            title: Widget_Text.text(message: 'version 1.0.0'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          Container(
            height: 65.h,
            decoration: BoxDecoration(
              color: Colors_.button_Color.withOpacity(0.2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Widget_Text.text(
                    message: 'Is app useful ?',
                    fontSize: Dimensions.drawer_footer_fontsize,
                  ),
                ),
                Icon(Icons.thumb_up_alt_outlined,
                    color: Color(0XFF007EA7), size: 36.sp),
                Icon(Icons.thumb_down_alt_outlined,
                    color: Color(0XFF7F7D80), size: 36.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
