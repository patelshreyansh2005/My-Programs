import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen_Categories extends StatefulWidget {
  const Screen_Categories({super.key});

  @override
  State<Screen_Categories> createState() => _Screen_CategoriesState();
}
bool isselect = false;

class _Screen_CategoriesState extends State<Screen_Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          padding: EdgeInsets.all(10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Widget_Text.text(
                message: 'Select your Categories:',
                fontSize: 24.w,
                color: Color(0XFF007EA7),
              ),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: isselect
                                ? Color(0XFFD3EAFF)
                                : Colors.transparent,
                            side: BorderSide(color: isselect ? Color(
                                0XFF007EA7) : Colors.black)
                        ),
                        onPressed: () {
                          setState(() {
                            isselect = !isselect;
                          });
                        },
                        child: Text('Surat,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Ahmedabad,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Surat,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Rajkot,Gujrat'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
