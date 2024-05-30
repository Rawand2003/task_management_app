import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/core/resourses/images.dart';
import 'package:flutter_application_first_project/feature/auth/signup.dart/pages/SsignupPage.dart';
import 'package:flutter_application_first_project/feature/join&create/page/join&create.dart';

class drawerWidget extends StatelessWidget {
  drawerWidget({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 218,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.zero),),
      backgroundColor: ColorManager().backGround,
      child: ListView(
        children: [
          DrawerHeader(

            decoration: BoxDecoration(),
            child: Column(
              children: [
                Image.asset(imageManger().bear),
                Text(
                  userName,
                  style: TextStyle(
                      color: ColorManager().white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          // Divider(
          //   thickness: 1,
          // color: ColorManager().fontcolor,
          // indent: 10,
          // endIndent: 10,
          // ),
          ListTile(
            

            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => joinAndcreate(),));
            },
            leading: Image.asset(imageManger().LinkIcon),
            title: Text(
              "Create & Join",
              style: TextStyle(
                  color: ColorManager().fontcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            onTap: () {
              
            },
            leading: Image.asset(imageManger().TranslationIcon),
            title: Text(
              "Change language",
              style: TextStyle(
                  color: ColorManager().fontcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignPage(),));
              
            },
            leading: Image.asset(imageManger().LogOutIcon),
            title: Text(
              "Logout",
              style: TextStyle(
                  color: ColorManager().fontcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Divider(
            thickness: 1,
          color: ColorManager().fontcolor,
          indent: 10,
          endIndent: 10,
          )
        ],
      ),
    );
  }
}
