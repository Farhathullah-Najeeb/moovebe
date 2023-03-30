import 'package:flutter/material.dart';

import '../Welcome_Screen.dart';
import '../constant/My_Functions.dart';
import '../constant/colors.dart';

class botton_button extends StatelessWidget {
  final String name;
  final TextButton textbutton;

  const botton_button({Key? key, required this.name, required this.textbutton,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      alignment: Alignment.bottomCenter,
      height: height / 17,
      width: width / 1.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: TextButton(onPressed: (){}, child: Text(name))),
    );
  }
}
