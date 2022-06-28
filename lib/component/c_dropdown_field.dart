import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CdropdownField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String hintText;

  final List<DropdownMenuItem> items;
  final String? Function(dynamic)? validator;
final void Function(dynamic)? onChanged;
  const CdropdownField({
    Key? key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    required this.items,
    this.validator, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
     items: items,
     onChanged: onChanged,
      validator: validator,
       decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        filled: true,
        fillColor: Theme.of(context).backgroundColor,
        contentPadding: EdgeInsets.symmetric(vertical: 20.h),
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
