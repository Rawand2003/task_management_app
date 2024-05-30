import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorManager().white,
      thickness: 1,
    );
  }
}