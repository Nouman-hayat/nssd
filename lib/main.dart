import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nssd/pages/Personalinfo_page.dart';
import 'package:nssd/pages/login_page.dart';
import 'package:nssd/pages/login_page2.dart';
import 'package:nssd/pages/signup_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       builder: (context , child)=> MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
   home:const PersonalinfoPage(),
      ),
      designSize: const Size(375, 812)
    );
  }
}

