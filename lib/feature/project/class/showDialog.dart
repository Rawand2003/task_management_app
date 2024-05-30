import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/bugsScreen/page/bugScreen.dart';
import 'package:flutter_application_first_project/feature/widget/AppButton.dart';

class showDialogWidget extends StatefulWidget {
  const showDialogWidget(
      {super.key,
      required this.taskcolor,
      required this.bugdescripton,
      required this.taskName,
      required this.BugImage});
  final Color taskcolor;
  final String bugdescripton;
  final String taskName;
  final String BugImage;

  @override
  State<showDialogWidget> createState() => _showDialogWidgetState();
}

class _showDialogWidgetState extends State<showDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 266,
      height: 343,
      decoration: BoxDecoration(
          color: widget.taskcolor, borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 248,
        height: 287,
        child: Column(
          children: [
            Text(
              widget.bugdescripton,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: ColorManager().heavenly),
            ),
            Text(
              widget.bugdescripton,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: ColorManager().heavenly),
            ),
            AppButton(
              text: "Add bugs",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => bugScreen(),));
              },
              buttonhight: 35,
              buttonWidth: 125,
              buttoncolor: ColorManager().bugcolor,
              buttontextcolor: ColorManager().white,
              fontSize: 13,
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: ColorManager().yellow),
      ),
    );
  }
}
