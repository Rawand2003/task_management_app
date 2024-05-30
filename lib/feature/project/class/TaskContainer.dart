import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/project/class/showDialog.dart';

class TaskContainer extends StatelessWidget {
  TaskContainer(
      {super.key,
      required this.taskcolor,
      required this.tasdescripton,
      required this.taskName,
      required this.BugImage, required this.taskNamecolor});
  final Color taskcolor;
  final Color taskNamecolor;
  final String tasdescripton;
  final String taskName;
  final String BugImage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            contentPadding: EdgeInsets.all(200),
            actions: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: showDialogWidget(
              taskcolor: taskcolor,
              bugdescripton: '',
              taskName: '',
              BugImage: '',
            ),
          ),
          ],)
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Container(
          width: 100,
          height: 73,
          decoration: BoxDecoration(
              color: taskcolor, borderRadius: BorderRadius.circular(7)),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    taskName,
                    style: TextStyle(
                        color: taskNamecolor,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  // Image.asset(BugImage)
                ],
              ),
              Container(
                width: 90,
                height: 48,
                child: Text(
                  tasdescripton,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorManager().yellow),
              )
            ],
          ),
        ),
      ),
    );
  }
}
