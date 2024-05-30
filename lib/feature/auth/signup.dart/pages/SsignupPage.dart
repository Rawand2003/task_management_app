import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/auth/login.dart/bloc/login_bloc.dart';
import 'package:flutter_application_first_project/feature/auth/login.dart/page/LoginPage.dart';
import 'package:flutter_application_first_project/feature/join&create/page/join&create.dart';
import 'package:flutter_application_first_project/feature/widget/AppButton.dart';
import 'package:flutter_application_first_project/feature/widget/AppCheckbox.dart';
import 'package:flutter_application_first_project/feature/widget/AppContainer.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextField_passsword.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextfield.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextfield_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Color(0xff0A324D),
          body: Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(children: [
                  SizedBox(
                    height: 600,
                    width: 288,
                    child: AppContainer(
                      wid: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "  Email",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff0A324D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: AppTextField_auth(
                                  HintText: "Example@gmail.com",
                                )),
                            const Padding(
                              padding: EdgeInsets.only(right: 50),
                              child: Text(
                                "  Username",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xff0A324D),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: AppTextField_auth(
                                HintText: "Example",
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "  Password",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff0A324D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AppTextField_password(
                              HintText: "************",
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 20),
                              child: Row(
                                children: [
                                  Appcheckbox(),
                                  const Text(
                                    "Remember me",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff0A324D),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ContainerHight: 438,
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AppButton(
                    text: 'Sign Up',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => joinAndcreate()));
                    },
                    buttonhight: 60,
                    buttonWidth: 283,
                    buttoncolor: ColorManager().yellow,
                    buttontextcolor: ColorManager().backGround, fontSize: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account  ?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignPage(),
                        ));
                      },
                      child: const Text(
                        "   Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff77C1C1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
