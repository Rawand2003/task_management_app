import 'package:flutter/material.dart';

class sendTextfield extends StatelessWidget {
  const sendTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 226,
      height: 43,
      child: TextField(
        // controller: controller,
        decoration: InputDecoration(
            // hintText: HintText,
            fillColor: Color(0xff77C1C1),
            filled: true,
            hintStyle: TextStyle(
                color: Color(0xff1B2F6C),
                fontSize: 15,
                fontWeight: FontWeight.w400),
            focusColor: Color(0xff77C1C1),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff1B2F6C),
              ),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
}}