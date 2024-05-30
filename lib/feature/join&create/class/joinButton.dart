import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/join&create/class/AppBottomSheetWidget.dart';

class joinButton extends StatelessWidget {
  const joinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: ColorManager().white,
      dashPattern: [11],
      borderType: BorderType.RRect,
      radius: Radius.circular(15),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          child: Container(
            width: 271,
            height: 49,
            color: ColorManager().backGround,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.add_circle,
                    color: ColorManager().yellow,
                  ),
                ),
                Text(
                  "Join",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(
                          top: Radius.circular(15))),
                builder: (context) => AppBottomSheet(),
              );
            },
        ),
      ),
    );
  }
}
