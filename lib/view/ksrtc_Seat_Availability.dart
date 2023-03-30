import 'package:flutter/material.dart';

import 'Widgets/bus_profile.dart';
import 'constant/colors.dart';

class seat_capacity extends StatelessWidget {
  const seat_capacity({Key? key}) : super(key: key);

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
              "KSRTC Swift Scania P-Series",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: profile()
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          Container(
            height: height / 1.7,
            width: width / 1.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 25,top: 30),
                child: SizedBox(
    height: 30,
    width: 50,
    child: Image.asset("Assets/seat.png",fit: BoxFit.fill,),
    ),
              ),
                Row(
                  children: [
                    Center(
                      child: SizedBox(
                          height: height/2.2,
                          width: width / 3,
                          child: GridView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 14,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: Image.asset("Assets/seat1.png"),
                                );
                              })),
                    ),
                    SizedBox(
                        height: height/2.2,
                        width: width / 3,
                        child: GridView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 14,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                height: 15,
                                width: 15,
                                child: Image.asset("Assets/seat1.png"),
                              );
                            }))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
