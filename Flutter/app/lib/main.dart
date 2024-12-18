import 'package:app/JobCard.dart';
import 'package:app/Screens/Screen_Layout.dart';
import 'package:app/Screens/Screen_Welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<Widget> findWidget() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isWelcome = prefs.getBool('isWelcome');
    if (isWelcome == true) {
      return const Screen_Layout();
    }
    return const Screen_Welcome();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF007EA7)),
          useMaterial3: true,
        ),
        // home: Screen_Otp(welcomeotp: '1234',email: 'smit@gmail.com',),
        home: FutureBuilder(
          future: findWidget(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data!;
            } else {
              return const Screen_Welcome();
            }
          },
        ),
        // home: JobCard(),
      ),
    );
  }
}