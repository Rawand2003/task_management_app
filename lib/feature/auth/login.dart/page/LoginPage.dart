import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/auth/login.dart/bloc/login_bloc.dart';
import 'package:flutter_application_first_project/feature/auth/signup.dart/pages/SsignupPage.dart';
import 'package:flutter_application_first_project/feature/widget/AppButton.dart';
import 'package:flutter_application_first_project/feature/widget/AppCheckbox.dart';
import 'package:flutter_application_first_project/feature/widget/AppContainer.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextField_passsword.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextfield_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Color(0xff0A324D),
          body: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(children: [
                  SizedBox(
                    height: 500,
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
                      ContainerHight: 360,
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 10,
                   bottom: 10
                   ),
                  child: AppButton(
                    text: 'Login',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignPage()));
                    },
                    buttonhight: 60,
                    buttonWidth:283 ,
                    buttoncolor: ColorManager().yellow,
                    buttontextcolor: ColorManager().backGround, fontSize: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account ?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is Successlogin) {
                          // context.read<LoginBloc>().add(logingin());
                        }
                      },
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignPage(),
                        ));
                      },
                      child: const Text(
                        "   Sign Up",
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
