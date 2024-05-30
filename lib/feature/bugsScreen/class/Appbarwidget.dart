import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/core/resourses/images.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {},
            icon:Image.asset(imageManger().dots),)
      ],
      backgroundColor: ColorManager().heavenly,
      leading:Image.asset (imageManger().bigbug),
      title: Text(
        "Bugs",
        style: TextStyle(
            color: ColorManager().white,
            fontSize: 25,
            fontWeight: FontWeight.w600),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
