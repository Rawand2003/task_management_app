import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/join&create/class/joinButton.dart';
import 'package:flutter_application_first_project/feature/widget/AppButton.dart';

class joinAndcreate extends StatelessWidget {
  const joinAndcreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A324D),
      body: Align(alignment: Alignment.center,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/Group 34.png"),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 40),
              child: AppButton(
                text: "create",
                onTap: () {},
                buttonhight: 60,
                buttonWidth: 283,
                buttoncolor: ColorManager().yellow,
                buttontextcolor: ColorManager().backGround, fontSize: 30,
              ),
            ),
            joinButton()
          ],
        ),
      ),
    );
  }
}
