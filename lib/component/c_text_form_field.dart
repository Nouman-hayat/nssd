import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ctextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
 Ctextfield({Key? key, this.controller, required this.hintText})
      : super(key: key);

  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: Colors.transparent,
      width: 0,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText ,
      border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        fillColor: const Color(0xffE9E9E9),
        contentPadding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
