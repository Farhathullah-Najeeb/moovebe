import 'package:flutter/material.dart';

import '../constant/colors.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 7,
      width: width / 1.05,
      decoration: BoxDecoration(
          color: contnercolor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rohith Sharma",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      color: Colors.white),
                ),
                Text(
                  "Licensce no:PJ519966129844",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: height,
              width: width / 4,
              color: contnercolor,
              child:
              const Image(image: AssetImage("Assets/driver.png")),
            ),
          )
        ],
      ),
    );
  }
}
