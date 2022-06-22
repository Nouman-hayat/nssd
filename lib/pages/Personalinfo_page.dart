import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nssd/pages/classes/occupation.dart';

class PersonalinfoPage extends StatefulWidget {
  const PersonalinfoPage({Key? key}) : super(key: key);

  @override
  State<PersonalinfoPage> createState() => _PersonalinfoPageState();
}

class _PersonalinfoPageState extends State<PersonalinfoPage> {
  final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.sp),
      borderSide: BorderSide(color: Colors.transparent, width: 0));

  InputDecoration getInputDecoration(
      {required Widget prefixIcon, Widget? subfix, required String hintText}) {
    return InputDecoration(
        prefixIcon: prefixIcon,
        enabledBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        suffixIcon: subfix,
        border: outlineInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
        filled: true,
        fillColor: const Color(0xffe9e9e9),
        contentPadding: EdgeInsets.symmetric(vertical: 20));
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Male"), value: "USA"),
      DropdownMenuItem(child: Text("Female"), value: "Canada"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<Occupation>> get occupation {
    List<DropdownMenuItem<Occupation>> occupationItems = [
      DropdownMenuItem(
          value: Occupation(id: 1, name: 'serving'),
          child: const Text("serving")),
      DropdownMenuItem(
          value: Occupation(id: 1, name: 'teacher'),
          child: const Text("teacher")),
    ];
    return occupationItems;
  }

  void presentdatepicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime.now());
         
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 152.h,
                width: 532.w,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/svg/topLeft.svg'),
                        SvgPicture.asset('assets/svg/topRight.svg'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Personal Information',
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff8B010B))),
                    SizedBox(height: 20.h),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Full Name")),
                    SizedBox(height: 20.h),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Short Name")),
                    SizedBox(height: 20.h),
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.fingerprint),
                            hintText: "82310-443744-9")),
                    SizedBox(height: 20.h),
                    DropdownButtonFormField<String>(
                        items: dropdownItems,
                        onChanged: (String? value) {
                          print(value);
                        },
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Gender")),
                    SizedBox(height: 20.h),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Father Name")),
                    SizedBox(height: 20.h),
                    DropdownButtonFormField<Occupation>(
                        items: occupation,
                        onChanged: (Occupation? value) {
                          print(value!);
                          print(value.id);
                        },
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Father Occupation")),
                    SizedBox(height: 20.h),
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Confirm Password",
                            subfix: const Icon(Icons.remove_red_eye_outlined))),
                    SizedBox(height: 20.h),
                    TextFormField(
                      onTap: presentdatepicker,
                      textInputAction: TextInputAction.next,
                      decoration: getInputDecoration(
                        prefixIcon: const Icon(Icons.calendar_month),
                        hintText: "Date",
                        subfix: Icon(Icons.calendar_month),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print("hello world");
                        },
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color(0xff8B010B),
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            textStyle: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w900)),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff8B010B),
                          ),
                        ),
                      ],
                    )
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
