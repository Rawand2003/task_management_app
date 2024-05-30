import 'package:flutter/material.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/bugsScreen/class/dividerWidget.dart';
import 'package:flutter_application_first_project/feature/project/class/AppbarWidget.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextfield.dart';

class bugScreen extends StatelessWidget {
  bugScreen({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager().backGround,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorManager().backGround,
                ColorManager().heavenly,
              ])),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: AppbarWidget(),
                  ),
                  DividerWidget(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: ColorManager().green,
                      child: Text("K"),
                    ),
                    title: Text(
                      "Kabas",
                      style: TextStyle(color: ColorManager().fontcolor),
                    ),
                  ),
                  DividerWidget(),
                  AppTextField(
                      textfieldwidth: 320,
                      textfieldhight: 198,
                      textfieldColor: ColorManager().yellow,
                      controller: controller,
                      max: 5,
                      hinttext: "enter bug..."),
                  DividerWidget(),
                  ExpansionTile(
                   
                    title: IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.arrow_drop_down_circle_sharp))),
                  DividerWidget(),
                ],
              ),
            ),
          ),
          // Expanded(child:Container(color: ColorManager().yellow,child: FlutterLogo(),) ,)
        ],
      ),

    );
  }
}
