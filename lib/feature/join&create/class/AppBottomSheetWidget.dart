import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/core/resourses/images.dart';
import 'package:flutter_application_first_project/feature/project/page/projectPage.dart';
import 'package:flutter_application_first_project/feature/widget/AppButton.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextField.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextField_passsword.dart';

class AppBottomSheet extends StatefulWidget {
  const AppBottomSheet({super.key});

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

TextEditingController Id_controller = TextEditingController();

class _AppBottomSheetState extends State<AppBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      backgroundColor: ColorManager().heavenly,
      onClosing: () {},
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter Project's ID ..",
                  style: TextStyle(
                      color: ColorManager().backGround,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(imageManger().tree),
                  ),
                ),
              ],
            ),
            AppTextField(
              textfieldwidth: 271,
              textfieldhight: 49,
              textfieldColor: ColorManager().white,
              max: 1,
              controller: Id_controller,
              hinttext: '',
            ),
            AppButton(
              text: "confirm",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => projectPage(),
                ));
              },
              buttonhight: 49,
              buttonWidth: 271,
              buttoncolor: ColorManager().backGround,
              buttontextcolor: ColorManager().white,
              fontSize: 30,
            )
          ],
        );
      },
    );
  }
}
