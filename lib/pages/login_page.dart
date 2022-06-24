import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginPage2 extends StatefulWidget {
  const loginPage2({Key? key}) : super(key: key);

  @override
  State<loginPage2> createState() => _loginPage2State();
}

class _loginPage2State extends State<loginPage2> {
  final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.sp),
      borderSide: BorderSide(color: Colors.transparent, width: 0));

InputDecoration  getInputDecoration({required Widget prefixIcon,Widget? subfix, required String hintText }) {
   return InputDecoration(
        prefixIcon: prefixIcon,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
       
        suffixIcon: subfix,
        border: outlineInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
        filled: true,
        fillColor: const Color(0xffe9e9e9),
        contentPadding: EdgeInsets.symmetric(vertical: 20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 296.h,
                width: double.infinity,
                child: Image.asset('assets/images/top_logo.png'),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: getInputDecoration(prefixIcon:  const Icon(Icons.fingerprint), hintText:"Email")
              ),
              SizedBox(height: 20.h),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: getInputDecoration(prefixIcon: const Icon(Icons.fingerprint_rounded), hintText: "**************" ,subfix:const Icon(Icons.remove_red_eye_sharp) )
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color(0xfffcc50a),
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      textStyle: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w900)),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Color(0xff151624)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
