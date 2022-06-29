import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nssd/component/c_dropdown_field.dart';
import 'package:nssd/pages/classes/occupation.dart';
import 'package:nssd/component/c_text_form_field.dart';
import 'package:nssd/pages/qualification_page.dart';
import 'package:nssd/utils/constants.dart';

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

  List<DropdownMenuItem<String>> get dropdownItemsgender {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("male"), value: "male"),
      DropdownMenuItem(child: Text("female"), value: "female"),
    ];
    return menuItems;
  }

// province

  List<DropdownMenuItem<String>> get dropdownproviceitem {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Punjab"), value: "Punjab"),
      DropdownMenuItem(child: Text("Sindh"), value: "Sindh"),
      DropdownMenuItem(child: Text("KPK"), value: "KPK"),
      DropdownMenuItem(child: Text("Balochistan"), value: "Balochistan"),
    ];
    return menuItems;
  }

  // minority
  List<DropdownMenuItem<String>> get dropdownminorityitem {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Hindo"), value: "hindo"),
      DropdownMenuItem(child: Text("Others"), value: "others"),
    ];
    return menuItems;
  }

  // minority
  List<DropdownMenuItem<String>> get dropdownnationalityitem {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("usa"), value: "usa"),
      DropdownMenuItem(child: Text("canada"), value: "canada"),
    ];
    return menuItems;
  }

  // disability
  List<DropdownMenuItem<String>> get dropdowndisabilityitem {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("yes"), value: "yes"),
      DropdownMenuItem(child: Text("No"), value: "no"),
    ];
    return menuItems;
  }

// occupation
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

  bool isCheckboxTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset('assets/svg/topRight.svg')),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 150.h),
                  Text('Personal Information',
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
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    hintText: 'Full Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                   kPageItemSpacing,
                  CTextFormField(
                    // controller: _dateOfBirthController,
                    onTap: () {
                      print('object');
                    },
                    // initialValue: 'ABC',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    hintText: 'Short Name',
                    prefixIcon: Icon(Icons.person),
                  ),
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
                  CdropdownField(
                    hintText: 'Gender',
                    items: dropdownItemsgender,
                    onChanged: (var value) {
                      print(value!);
                      print(value.id);
                    },
                    prefixIcon: const Icon(Icons.person),
                  ),
                    kPageItemSpacing,
                  CTextFormField(
                    // controller: _dateOfBirthController,
                    onTap: () {
                      print('object');
                    },
                    // initialValue: 'ABC',

                    hintText: 'Father Name',
                    prefixIcon: Icon(Icons.person),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                    kPageItemSpacing,
                  CdropdownField(
                    hintText: 'Father Occupation',
                    items: occupation,
                    onChanged: (var value) {
                      print(value!);
                      print(value.id);
                    },
                    prefixIcon: const Icon(Icons.person),
                  ),
                    kPageItemSpacing,
                  CTextFormField(
                    // controller: _dateOfBirthController,
                    onTap: () {
                      print('object');
                      presentdatepicker();
                    },
                    // initialValue: 'ABC',
                    readOnly: true,
                    showCursor: false,
                    hintText: 'Date of Birth',
                    prefixIcon: Icon(Icons.calendar_month),
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  kPageItemSpacing,
                  CTextFormField(
                    // controller: _dateOfBirthController,
                    onTap: () {
                      print('object');
                    },
                    // initialValue: 'ABC',

                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
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

                    hintText: 'Contact Number',
                    prefixIcon: Icon(Icons.phone),
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

                    hintText: 'Other Contact Number',
                    prefixIcon: Icon(Icons.phone),
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

                    hintText: 'Guardian Contact Number',
                    prefixIcon: Icon(Icons.phone),
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

                    hintText: 'Postal Address',
                    prefixIcon: Icon(Icons.location_on),
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

                    hintText: 'Postal Address',
                    prefixIcon: Icon(Icons.location_on),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                    kPageItemSpacing,
                  CdropdownField(
                    hintText: 'Select province',
                    items: dropdownproviceitem,
                    onChanged: (var value) {
                      print(value!);
                      print(value.id);
                    },
                    prefixIcon: const Icon(Icons.person),
                  ),
                   kPageItemSpacing,
                  
                 
                  CTextFormField(
                    readOnly: true,
                    // controller: _dateOfBirthController,
                    onTap: () {
                      print('object');
                    },
                    // initialValue: 'ABC',

                    hintText: 'Minorites',
                    prefixIcon: const Icon(Icons.church),
                    suffixIcon: Checkbox(
                        onChanged: (value) {
                          setState(() {
                            isCheckboxTrue = !isCheckboxTrue;
                          });
                        },
                        value: isCheckboxTrue),

                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                  kPageItemSpacing,
                  CdropdownField(
                    hintText: 'Disability',
                    items: dropdowndisabilityitem,
                    onChanged: (var value) {
                      print(value!);
                      print(value.id);
                    },
                    prefixIcon: const Icon(Icons.wheelchair_pickup),
                  ),
                   kPageItemSpacing,
                  CdropdownField(
                    hintText: 'Other Nationality',
                    items: dropdownnationalityitem,
                    onChanged: (var value) {
                      print(value!);
                      print(value.id);
                    },
                    prefixIcon: const Icon(Icons.person),
                  ),
                   kPageItemSpacing,
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        print("hello world");
                         Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => qualificationPage()));
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
             
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
