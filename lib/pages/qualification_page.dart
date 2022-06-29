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
import 'package:nssd/utils/constants.dart';

class qualificationPage extends StatefulWidget {
  const qualificationPage({Key? key}) : super(key: key);

  @override
  State<qualificationPage> createState() => _qualificationPageState();
}

class _qualificationPageState extends State<qualificationPage> {
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
      DropdownMenuItem(child: Text("Male"), value: "Male"),
      DropdownMenuItem(child: Text("Female"), value: "Male"),
    ];
    return menuItems;
  }

  //qualification
  List<DropdownMenuItem<String>> get dropdownqualificationItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("matric"), value: "matric"),
      DropdownMenuItem(child: Text("inter"), value: "inter"),
      DropdownMenuItem(child: Text("master"), value: "master"),
    ];
    return menuItems;
  }

  //university
  List<DropdownMenuItem<String>> get dropdownuniversityItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Punjab university"), value: "Punjab"),
      DropdownMenuItem(child: Text("Nutech"), value: "Nutech"),
    ];
    return menuItems;
  }

  final datecontroler = TextEditingController();
  void selectdate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime.now())
        .then((date) {
     if(date!=null){
       datecontroler.text = DateFormat.yMd().format(date);
     }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
           Positioned(
               top: 0,
               right: 0,
               child: SvgPicture.asset('assets/svg/topRight.svg')),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120.h),
                    Text('Qualification',
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff8B010B))),
                    SizedBox(height: 20.h),
                              CdropdownField(
                      hintText: 'Qualification Level',
                      items: dropdownqualificationItems,
                      onChanged: (var value) {
                        print(value!);
                        print(value.id);
                      },
                      prefixIcon: const Icon(Icons.school),
                    ),
                     kPageItemSpacing,
                   
                             CTextFormField(
                      // controller: _dateOfBirthController,
                      onTap: () {
                        print('object');
                      },
                      // initialValue: 'ABC',
            
                      hintText: 'Degree title',
                      prefixIcon: Icon(Icons.school),
                     keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                  kPageItemSpacing,
                   
                             CTextFormField(
                      // controller: _dateOfBirthController,
                      onTap: () {
                        print('object');
                      },
                      // initialValue: 'ABC',
            
                      hintText: 'Obtained Marks/ CGPA',
                      prefixIcon: Icon(Icons.analytics),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                     kPageItemSpacing,
                   
                             CTextFormField(
                      // controller: _dateOfBirthController,
                      onTap: () {
                        print('object');
                      },
                      // initialValue: 'ABC',
            
                      hintText: 'Total Marks/ CGPA',
                      prefixIcon: Icon(Icons.analytics),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                    kPageItemSpacing,
                  
                     CTextFormField(
                      // controller: _dateOfBirthController,
                      onTap: () {
                        print('object');
                        selectdate();
                      },
                      // initialValue: 'ABC',
                      readOnly: true,
                      showCursor: false,
                      hintText: 'Passing Year',
                      prefixIcon: Icon(Icons.calendar_month),
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                     kPageItemSpacing,
                   
                             CdropdownField(
                      hintText: 'Board & University',
                      items: dropdownuniversityItems,
                      onChanged: (var value) {
                        print(value!);
                        print(value.id);
                      },
                      prefixIcon: const Icon(Icons.school),
                    ),
                      kPageItemSpacing,
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print("hello world");
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
                    kPageItemSpacing,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
