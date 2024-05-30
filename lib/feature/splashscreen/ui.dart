import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_first_project/feature/auth/login.dart/page/LoginPage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> 
with SingleTickerProviderStateMixin{


  @override
   void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds:2,),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => loginPage(),));
    },);
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff0A324D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/4983351 1.png"),
          ],
        ),
      ),
    ) ;
  }
}
