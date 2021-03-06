import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nssd/component/c_text_form_field.dart';
import 'package:nssd/pages/Personalinfo_page.dart';
import 'package:nssd/pages/forgotpassword_page.dart';
import 'package:nssd/pages/signup_page.dart';
import 'package:nssd/utils/constants.dart';
import 'package:nssd/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

  bool passwordsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset('assets/svg/signin.svg'),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 200.h),
                  Text('Login',
                      style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff8B010B))),
                   kPageItemSpacing,
                  CTextFormField(
                    // controller: _dateOfBirthController,
                    onTap: () {
                      print('object');
                    },
                    // initialValue: 'ABC',
          
                    hintText: '82310-443744-9',
                    prefixIcon: Icon(Icons.fingerprint),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                    kPageItemSpacing,
                  CTextFormField(
                    // controller: _dateOfBirthController,
                    onTap: () {
                      print('object');
                    },
                    // initialValue: 'ABC',
          
                    hintText: '**************',
                    prefixIcon: Icon(Icons.lock),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordsecure,
                    textInputAction: TextInputAction.next,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordsecure = !passwordsecure;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye_outlined)),
                  ),
                   kPageItemSpacing,
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()));
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff8B010B)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PersonalinfoPage()));
                        // Navigator.pushNamed(
                        //     context, RouteGenerator.Personalinfo_page);
                      },
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: const Color(0xff8B010B),
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w900)),
                      child: const Text(
                        'Login in',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                    kPageItemSpacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignupPage()));
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff8B010B)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
