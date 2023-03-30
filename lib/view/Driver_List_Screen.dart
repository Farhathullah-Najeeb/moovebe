import 'package:flutter/material.dart';

import 'Add_Driver.dart';
import 'constant/My_Functions.dart';
import 'constant/colors.dart';

class Driver_List extends StatelessWidget {
  const Driver_List({Key? key}) : super(key: key);

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
              "Driver List",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "21 Drivers Fount",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.grey),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: height / 12,
                      width: width / 1.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black26)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height,
                            width: width / 5,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child:  CircleAvatar(
                              backgroundColor:  Colors.grey.shade300,
                              radius: 17,
                              child: Image.asset("Assets/profile.png",fit: BoxFit.fill,),
                            ),),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rohith Sharma",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                               Text("Licn no:Pj54534734572452367",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 35,
                              width: 90,
                              decoration: BoxDecoration(
                                color: backgrndClr,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                  child: InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        "Delete",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ))),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: height/18,
        width: width/1.3,
        decoration: BoxDecoration(
          color: backgrndClr,
              borderRadius: BorderRadius.circular(10)
        ),
        child: FloatingActionButton.extended(
          backgroundColor: backgrndClr,
          onPressed: () {
             callNext(Add_Driver(), context);
          },
          label: const Text(
            'Add Driver',
            style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
