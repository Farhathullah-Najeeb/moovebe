import 'package:flutter/material.dart';

import 'Widgets/TextButton.dart';
import 'constant/colors.dart';

class Add_Driver extends StatelessWidget {
  const Add_Driver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          backgroundColor: contnercolor,
          title: const Center(
            child: Text(
              "Add Driver",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height*.04,
          ),
          Center(
            child: SizedBox(
              height: height/4,
              child: const Column(
                children: [
                  textbutton(
                    name: 'Enter Name',
                  ),
                  // SizedBox(
                  //    height: height * .02,
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 17),
                    child: textbutton(
                      name: 'Enter License Number',
                    ),
                  ),
                ],
              ),
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
            child: Container(
              alignment: Alignment.bottomLeft,
              height: height / 17,
              width: width / 1.2,
              decoration: BoxDecoration(
                  color: backgrndClr, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: TextButton(
                      onPressed: () {
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white),
                      ))),
            ),
          ),

        ],
      ),
    );
  }
}
