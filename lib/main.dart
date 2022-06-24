import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nssd/pages/Personalinfo_page.dart';
import 'package:nssd/pages/enrollment_page.dart';
import 'package:nssd/pages/forgotpassword_page.dart';
import 'package:nssd/pages/login_page.dart';
import 'package:nssd/pages/login_page2.dart';
import 'package:nssd/pages/qualification_page.dart';
import 'package:nssd/pages/resetpassword_page.dart';
import 'package:nssd/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                  primarySwatch: Colors.blue,
                  ),
              home: const LoginPage(),
            ),
        designSize: const Size(375, 812));
  }
}
