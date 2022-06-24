import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ResetpasswordPage extends StatefulWidget {
  const ResetpasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetpasswordPage> createState() => _ResetpasswordPageState();
}

class _ResetpasswordPageState extends State<ResetpasswordPage> {
  final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.sp),
      borderSide: BorderSide(color: Colors.transparent, width: 0));

  InputDecoration getInputDecoration(
      {required Widget prefixIcon, Widget? subfix, required String hintText}) {
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
  return   Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 198.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SvgPicture.asset('assets/svg/signin.svg'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Reset Password',
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff8B010B))),
                    SizedBox(height: 20.h),
                    TextFormField(
                       obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Old password",
                            subfix: const Icon(Icons.remove_red_eye_outlined))),
                             SizedBox(height: 20.h),
                    TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "New password",
                            subfix: const Icon(Icons.remove_red_eye_outlined))),
                             SizedBox(height: 20.h),
                    TextFormField(
                      obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Confirm Password",
                            subfix: const Icon(Icons.remove_red_eye_outlined))),
                    SizedBox(height: 20.h),
                   
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color(0xff8B010B),
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            textStyle: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w900)),
                        child: const Text(
                          'Change Password',
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}