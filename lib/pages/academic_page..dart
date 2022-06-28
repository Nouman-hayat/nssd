import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:nssd/component/c_dropdown_field.dart';
import 'package:nssd/component/c_text_form_field.dart';
import 'package:nssd/pages/classes/occupation.dart';
import 'package:nssd/pages/enrollment_page.dart';

class Academic extends StatefulWidget {
  const Academic({Key? key}) : super(key: key);

  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {

     //dropdowncapusItems
  List<DropdownMenuItem<String>> get dropdowncapusItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("rwp"), value: "rwp"),
    ];
    return menuItems;
  }

  //dropdowndepartmentItems
  List<DropdownMenuItem<String>> get dropdowndepartmentItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("it"), value: "it"),
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
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        right: 0,
                        child: SvgPicture.asset('assets/svg/topRight.svg')),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Academic',
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff8B010B))),
                    SizedBox(height: 20.h),
                    CdropdownField(
                      hintText: 'Campus',
                      items: dropdowncapusItems,
                      onChanged: (var value) {
                        print(value!);
                        print(value.id);
                      },
                     
                    ),
                    SizedBox(height: 20.h),
                   
                    CdropdownField(
                      hintText: 'Department',
                      items: dropdowndepartmentItems,
                      onChanged: (var value) {
                        print(value!);
                        print(value.id);
                      },
                      prefixIcon: const Icon(Icons.school),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EnrollmentPage()));
                        },
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color(0xff8B010B),
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            textStyle: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w900)),
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



