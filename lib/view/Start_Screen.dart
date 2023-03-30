import 'package:flutter/material.dart';

import 'Welcome_Screen.dart';
import 'Widgets/Bottom_Button.dart';
import 'constant/My_Functions.dart';
import 'constant/colors.dart';

class Start_Screen extends StatelessWidget {
  const Start_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgrndClr,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height / 17,
            width: width / 1.2,
          ),
          Center(
            child: SizedBox(
              height: height / 16,
              width: width / 1.7,
              child: const Image(image: AssetImage("Assets/moovbe.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28),
            child: InkWell(
              onTap: (){
                callNext(const Welcome_Screen(), context);
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                height: height / 17,
                width: width / 1.2,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20,color: backgrndClr),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
