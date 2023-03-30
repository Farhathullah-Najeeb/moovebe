import 'package:flutter/material.dart';

import '../constant/My_Functions.dart';
import '../constant/colors.dart';
import '../ksrtc_Seat_Availability.dart';
import '../ksrtc_Seat_Avilability2.dart';

class listview_builder extends StatelessWidget {
   listview_builder({Key? key}) : super(key: key);
  List<String> Busname = [
    "Swift Scania P-Series",
    "Swift Scania D-Series",

  ];
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
        ),
        itemCount: 21,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: height/12,
              width: width/1.05,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1,color: Colors.black26)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height,
                    width: width/5,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                    ),
                    child: Image(image: AssetImage("Assets/bus1.png")),
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("KSRTC",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      Text(Busname[index%2],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                        color: backgrndClr,
                        borderRadius: BorderRadius.circular(5
                        ),
                      ),
                      child:  Center(child: InkWell(
                        onTap: (){
                          if (Busname[index] == "Swift Scania P-Series") {
                            callNext(const seat_capacity(), context);
                          } else if (Busname[index] == "Swift Scania D-Series") {
                            callNext(const seat_avilability2(), context);
                          }
                        },
                              child: const Text("Manage",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.white),))),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
