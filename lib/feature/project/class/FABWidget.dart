import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/core/resourses/images.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ColorManager().heavenly,
      child: Image.asset(imageManger().FAB_Icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(500))),
    );
  }
}
