import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/project/class/showDialog.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    super.key,
    required this.textfieldwidth,
    required this.textfieldhight,
    required this.textfieldColor,
    required this.controller,
    required this.max, required this.hinttext,
  });
  final double textfieldwidth;
  final double textfieldhight;
  final int max;
  final Color textfieldColor;
  final TextEditingController controller;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: textfieldwidth,
      height: textfieldhight,
      
      child: TextField(
        onTap: () {
       
        },
        maxLines: max,
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
            fillColor: textfieldColor,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
