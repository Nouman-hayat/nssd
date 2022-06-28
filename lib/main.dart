import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nssd/pages/Personalinfo_page.dart';
import 'package:nssd/pages/enrollment_page.dart';
import 'package:nssd/pages/forgotpassword_page.dart';

import 'package:nssd/pages/login_page2.dart';
import 'package:nssd/pages/qualification_page.dart';
import 'package:nssd/pages/resetpassword_page.dart';
import 'package:nssd/pages/signup_page.dart';
import 'package:nssd/utils/dark_theme.dart';
import 'package:nssd/utils/light_theme.dart';
import 'utils/routes.dart';

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
              // Theme config
              themeMode: ThemeMode.system,
              theme: customlighttheme,
              darkTheme: customdarktheme,
              // Routes config
              initialRoute: RouteGenerator.login,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
        designSize: const Size(375, 812));
  }
}
