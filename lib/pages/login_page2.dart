import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              )
              ,
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login', style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff8B010B)
      
                )),
                SizedBox(height: 20.h),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(prefixIcon:  const Icon(Icons.fingerprint), hintText:"82310-443744-9")
                  ),
                 SizedBox(height: 20.h),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(prefixIcon: const Icon(Icons.lock), hintText: "**************" ,subfix:const Icon(Icons.remove_red_eye_outlined) )
                  ),
                  SizedBox(height: 20.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(onPressed: (){}, child:  Text('Forgot password?', style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff8B010B)
                                 ) ,),
                                
                                 ),
                  ),
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
                        'Login in',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                SizedBox(height: 20.h),
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
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff8B010B),
                        ),
                      ),
                    ],
                  )
                ],
              ),),
           
            ],
            
          ),
        ),
      ),
    );
  }
}
