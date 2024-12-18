import 'package:app/Functions/Function_Shared_Preferences.dart';
import 'package:app/Screens/Screen_Layout.dart';
import 'package:app/Utils/Colors_.dart';
import 'package:app/Utils/Dimensions.dart';
import 'package:app/Widgets/Widget_Button.dart';
import 'package:app/Widgets/Widget_FloatingSnackBar.dart';
import 'package:app/Widgets/Widget_Navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen_Otp extends StatefulWidget {
  final String welcomeotp;
  final String email;

  const Screen_Otp({Key? key, required this.welcomeotp, required this.email})
      : super(key: key);

  @override
  State<Screen_Otp> createState() => _Screen_OtpState();
}

class _Screen_OtpState extends State<Screen_Otp> {
  double color_opacity = 0.5;
  String otp = '';

  List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(30.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => SizedBox(
                    width: Dimensions.otp_input_box_width,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: _controllers[index].text.isNotEmpty
                            ? Colors_.otp_input_fillColor
                            : Colors.white,
                        counterText: '',
                        border: const OutlineInputBorder(),
                      ),
                      controller: _controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      onChanged: (value) {
                        if (_controllers[0].text.isNotEmpty &&
                            _controllers[1].text.isNotEmpty &&
                            _controllers[2].text.isNotEmpty &&
                            _controllers[3].text.isNotEmpty) {
                          setState(() {
                            color_opacity = 1;
                          });
                        } else {
                          setState(
                            () {
                              color_opacity = 0.5;
                            },
                          );
                        }
                        if (value.isNotEmpty) {
                          if (index < _controllers.length - 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).unfocus();
                          }
                        } else if (index > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  ),
                ),
              ),
              Widget_Button.button(
                backgroundColor: Colors_.button_Color,
                buttonText: 'Submit',
                height: Dimensions.button_Height,
                width: Dimensions.button_Width,
                onPressed: () async {

                  otp = '';
                  for (int i = 0; i <= 3; i++) {
                    otp += _controllers[i].text;
                  }

                  if (widget.welcomeotp == otp) {
                    await Function_Shared_Preferences.insert_Shared_Preferences(
                        widget.email);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Widget_Navigator.Navigator_push(
                        context: context, screen: Screen_Layout());
                  } else {
                    Widget_FloatingSnackBar.show_Error_Message(
                        'Enter the Valid Otp', context,
                        textColor: Colors.red);
                  }
                },
                color_opacity: color_opacity,
                fontSize: Dimensions.font_Size,
                color: Colors.white.withOpacity(color_opacity),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
