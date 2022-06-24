import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:nssd/pages/classes/occupation.dart';

class EnrollmentPage extends StatefulWidget {
  const EnrollmentPage({Key? key}) : super(key: key);

  @override
  State<EnrollmentPage> createState() => _EnrollmentPageState();
}

class _EnrollmentPageState extends State<EnrollmentPage> {
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


   List<DropdownMenuItem<String>> get dropdownacedemicItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Spring"), value: "Spring"),
      DropdownMenuItem(child: Text("Summer"), value: "Summer"),
    ];
    return menuItems;
  }
    List<DropdownMenuItem<String>> get dropdownyearItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("2021"), value: "2021"),
      DropdownMenuItem(child: Text("2022"), value: "2022"),
    ];
    return menuItems;
  }
    List<DropdownMenuItem<String>> get dropdownprogramItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("BSCS"), value: "BSCS"),
      DropdownMenuItem(child: Text("BSIT"), value: "BSIT"),
    ];
    return menuItems;
  }
    List<DropdownMenuItem<String>> get dropdowncourseItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("cs201"), value: "cs201"),
      DropdownMenuItem(child: Text("cs301"), value: "cs301"),
    ];
    return menuItems;
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
                      Text('Enrollment',
                          style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff8B010B))),
                      SizedBox(height: 20.h),
                      TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: getInputDecoration(
                              prefixIcon: const Icon(Icons.app_registration),
                              hintText: "Registration No.")),
                      SizedBox(height: 20.h),
                       DropdownButtonFormField<String>(
                        items: dropdownacedemicItems,
                        onChanged: (String? value) {
                          print(value);
                        },
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.folder),
                            hintText: "Acedemic Session")),
                             SizedBox(height: 20.h),
                    DropdownButtonFormField<String>(
                        items: dropdownyearItems,
                        onChanged: (String? value) {
                          print(value);
                        },
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.calendar_month),
                            hintText: "Acedemic Session Year")),
                             SizedBox(height: 20.h),
                    DropdownButtonFormField<String>(
                        items: dropdownprogramItems,
                        onChanged: (String? value) {
                          print(value);
                        },
                        decoration: getInputDecoration(
                            prefixIcon: const Icon(Icons.school),
                            hintText: "Program")),
                    SizedBox(height: 20.h),
                      DropdownButtonFormField<String>(
                          items: dropdowncourseItems,
                          onChanged: (String? value) {
                            print(value);
                          },
                          decoration: getInputDecoration(
                              prefixIcon: const Icon(Icons.school),
                              hintText: "Course")),
                    
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
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w900)),
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
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

