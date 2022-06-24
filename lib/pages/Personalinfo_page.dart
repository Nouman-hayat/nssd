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
      DropdownMenuItem(child: Text("Male"), value: "Male"),
      DropdownMenuItem(child: Text("Female"), value: "Male"),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
           height: 152.h,
            width: double.infinity,
            child: Stack(
              children: [
               
              Positioned(
                top: 0,right: 0,
                child: SvgPicture.asset('assets/svg/topRight.svg')
                ),
               
                
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 130.h),
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
                    onTap: presentdatepicker,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(Icons.calendar_month),
                      hintText: "Date of Birth",
                      subfix: Icon(Icons.calendar_month),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      hintText: "Email",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      hintText: "Contact Number",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      hintText: "Other Contact Number",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      hintText: "Guardian Contact Number",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(Icons.location_on),
                      hintText: "Postal Address",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(Icons.location_on),
                      hintText: "Permanent Address",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  DropdownButtonFormField<String>(
                      items: dropdownproviceitem,
                      onChanged: (String? value) {
                        print(value);
                      },
                      decoration: getInputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Select province")),
                  SizedBox(height: 20.h),
                  DropdownButtonFormField<String>(
                      items: dropdownminorityitem,
                      onChanged: (String? value) {
                        print(value);
                      },
                      decoration: getInputDecoration(
                          prefixIcon: const Icon(Icons.church),
                          hintText: "Minority")),
                  SizedBox(height: 20.h),
                  DropdownButtonFormField<String>(
                      items: dropdowndisabilityitem,
                      onChanged: (String? value) {
                        print(value);
                      },
                      decoration: getInputDecoration(
                          prefixIcon: const Icon(Icons.wheelchair_pickup),
                          hintText: "Disability")),
                  SizedBox(height: 20.h),
                  DropdownButtonFormField<String>(
                      items: dropdownnationalityitem,
                      onChanged: (String? value) {
                        print(value);
                      },
                      decoration: getInputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Other Nationality")),
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
                        'Save',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
