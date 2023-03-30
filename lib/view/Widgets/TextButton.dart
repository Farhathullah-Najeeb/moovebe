import 'package:flutter/material.dart';

import '../constant/colors.dart';

class textbutton extends StatelessWidget {
  final String name;
  const textbutton({Key? key, required this.name}) : super(key: key);

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
      height: 55,
      width: width * .82,
      decoration:  BoxDecoration(
        color:buttoncolor,
        borderRadius:  const BorderRadius.all(Radius.circular(10)
        ),
      ),
      child: Center(
        child: Center(
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: name,
              hintStyle: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w500,fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
