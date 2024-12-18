import 'package:app/Functions/Function_Check_Email_Validation.dart';
import 'package:app/Functions/Function_Get_Otp.dart';
import 'package:app/Screens/Screen_Otp.dart';
import 'package:app/Utils/Colors_.dart';
import 'package:app/Utils/Dimensions.dart';
import 'package:app/Widgets/Widget_Button.dart';
import 'package:app/Widgets/Widget_Circuler_Progress_Indecater.dart';
import 'package:app/Widgets/Widget_FloatingSnackBar.dart';
import 'package:app/Widgets/Widget_Navigator.dart';
import 'package:flutter/material.dart';
import 'package:app/Widgets/Widget_Welcome_Image.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class Screen_Welcome extends StatefulWidget {
  const Screen_Welcome({super.key});

  @override
  State<Screen_Welcome> createState() => _Screen_WelcomeState();
}

class _Screen_WelcomeState extends State<Screen_Welcome> {
  String? name;
  String? otp;
  bool isClickWelcomeButton = false;
  bool isValidEmail = false;
  bool isValidName = false;
  GlobalKey<FormState> _welcomekey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController(text: '');
  TextEditingController namecontroller = TextEditingController(text: '');

  double color_opacity = 0.5;
  bool show_nameTextField = false;

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: SafeArea(
        top: true,
        child: Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Widget_Welcome_Image.Welcome_Image(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 40.h,
                        horizontal: 30.w,
                      ),
                      child: Form(
                        key: _welcomekey,
                        child: Column(
                          children: [
                            TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  isValidEmail = Function_Check_Email_Validation
                                      .check_Email_Validation(
                                          emailcontroller.text);
                                  color_opacity = isValidEmail ? 1 : 0.5;
                                });
                              },
                              enableInteractiveSelection: false,
                              maxLength: 320,
                              controller: emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                counterText: '',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                hintText: 'Email',
                                prefixIcon: Icon(Icons.email_outlined),
                              ),
                            ),
                            SizedBox(height: 24.h),
                            show_nameTextField
                                ? TextFormField(
                                    enableInteractiveSelection: false,
                                    maxLength: 255,
                                    controller: namecontroller,
                                    keyboardType: TextInputType.name,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.deny(
                                        RegExp(r'[0-9]'),
                                      ),
                                      // Ignore digits
                                      FilteringTextInputFormatter.allow(
                                        RegExp(r'^[a-zA-Z ]*'),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      name = value.trim();

                                      setState(() {
                                        isValidName =
                                            name!.length > 6 ? true : false;
                                        color_opacity = isValidName ? 1 : 0.5;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      counterText: '',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      hintText: 'Name',
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                  )
                                : SizedBox(height: 90.h),
                            SizedBox(height: 120.h),
                            Widget_Button.button(
                              buttonText: 'Welcome',
                              color_opacity: color_opacity,
                              height: Dimensions.button_Height,
                              width: Dimensions.button_Width,
                              backgroundColor: Colors_.button_Color,
                              onPressed: () async {
                                if (show_nameTextField && isValidEmail) {
                                  if (isValidEmail && isValidName) {
                                    setState(() {
                                      isClickWelcomeButton = true;
                                    });
                                    otp = await Function_Get_Otp.getOtp(
                                        emailcontroller.text);
                                    Widget_Navigator.Navigator_push(
                                      context: context,
                                      screen: Screen_Otp(
                                        welcomeotp: otp!,
                                        email: emailcontroller.text,
                                      ),
                                    );
                                    setState(() {
                                      isClickWelcomeButton = false;
                                    });

                                  } else {
                                    Widget_FloatingSnackBar.show_Error_Message(
                                      'Enter the Full Name',
                                      context,
                                      textColor: Colors.red,
                                    );
                                  }
                                } else {
                                  if (isValidEmail) {
                                    setState(() {
                                      color_opacity = 0.5;
                                      show_nameTextField = true;
                                    });
                                  } else {
                                    Widget_FloatingSnackBar.show_Error_Message(
                                      'Enter the Valid Email',
                                      context,
                                      textColor: Colors.red,
                                    );
                                  }
                                }
                              },
                              color: Colors.white.withOpacity(color_opacity),
                              fontSize: Dimensions.font_Size,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (isClickWelcomeButton)
                Widget_Circuler_Progress_Indecater.circuler_Progress_Indecater()
            ],
          ),
        ),
      ),
    );
  }
}
