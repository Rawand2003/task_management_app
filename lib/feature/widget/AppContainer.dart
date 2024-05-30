import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppContainer extends StatelessWidget {
  final Widget wid;
  final double ContainerHight;
  AppContainer({
    super.key,
    required this.wid, required this.ContainerHight,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Container(
            child: wid,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            height: ContainerHight,
            width: 288,
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/Group 2.png")),
      ],
    );
  }
}
