import 'package:flutter/material.dart';
import 'package:moovebe/view/Bus_Details_Screen.dart';
import 'package:moovebe/view/Start_Screen.dart';
import 'package:moovebe/view/constant/My_Functions.dart';

import 'Widgets/Bottom_Button.dart';
import 'Widgets/TextButton.dart';
import 'constant/colors.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height / 2.7,
            width: width,
            color: contnercolor,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 41,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        "Manage your Bus and Drivers",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 2.7,
                  width: width / 2.9,
                  child: Image.asset(
                    "Assets/Polygon 1.png",
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height/4,
            child: const Column(
              children: [
                textbutton(
                  name: 'Enter Username',
                ),
                // SizedBox(
                //    height: height * .02,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 17),
                  child: textbutton(
                    name: 'Enter Password',
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: height*.03,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 46),
            child: InkWell(
              onTap: (){
                callNext(const Details_Screen(), context);
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: height / 17,
                width: width / 1.2,
                decoration: BoxDecoration(
                    color: backgrndClr, borderRadius: BorderRadius.circular(10)),
                child: Center(
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white),
                        )),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
