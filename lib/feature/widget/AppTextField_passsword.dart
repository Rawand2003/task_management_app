import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTextField_password extends StatefulWidget {
   final String HintText;
   AppTextField_password({super.key,
   required this.HintText,
   });

  @override
  State<AppTextField_password> createState() => _AppTextField_passwordState();
}

class _AppTextField_passwordState extends State<AppTextField_password> {
 TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool visibility=true;
    return SizedBox(
      width: 226,
      height: 43,
      child: TextField(
        obscureText: visibility,
        controller: controller,
        decoration: InputDecoration(
          suffix: IconButton(onPressed: () {
            setState(() {
           visibility=!visibility;
            });
          }, 
          icon:Icon(visibility? Icons.visibility_off_sharp : Icons.visibility)),
          hintText: widget.HintText ,
          fillColor: Color(0xff77C1C1),
          filled: true,
          hintStyle:TextStyle(color:Color(0xff1B2F6C),
          fontSize: 15,
          fontWeight: FontWeight.w400 ) ,
          focusColor: Color(0xff77C1C1),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color:  Color(0xff1B2F6C),
            ),
            borderRadius: BorderRadius.circular(10),
            )
        ), 
      ),
    );
  }
}