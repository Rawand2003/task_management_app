import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color buttoncolor;
  final Color buttontextcolor;
  final double buttonhight;
  final double buttonWidth;
  final double fontSize;
  final VoidCallback onTap;
  AppButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.buttonhight,
    required this.buttonWidth,
    required this.buttoncolor, required this.buttontextcolor, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: buttonhight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: buttontextcolor,
            ),
          ),
        ),
      ),
    );
  }
}
