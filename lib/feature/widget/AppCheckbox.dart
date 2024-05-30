import 'package:flutter/material.dart';

class Appcheckbox extends StatefulWidget {
  Appcheckbox({super.key});

  @override
  State<Appcheckbox> createState() => _AppcheckboxState();
}

bool status = false;

class _AppcheckboxState extends State<Appcheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      hoverColor: Color(0xff77C1C1),
      side: BorderSide.none,
      fillColor: const MaterialStatePropertyAll(
        Color.fromARGB(255, 191, 191, 191),
      ),
      value: status,
      onChanged: (val) {
        setState(() {
          status = val!;
        });
      },
    );
  }
}
