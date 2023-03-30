import 'package:flutter/material.dart';
import 'Widgets/bus_profile.dart';
import 'constant/colors.dart';

class seat_avilability2 extends StatelessWidget {
  const seat_avilability2({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.only(right: 24,top: 30),
                  child: SizedBox(
                    height: 30,
                    width: 50,
                    child: Image.asset("Assets/seat.png",fit: BoxFit.fill,),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SizedBox(
                          // color: Colors.yellow,
                            height: height/2.6,
                            width: width / 6,
                            child: GridView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 6,
                                gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 14,
                                    width: 15,
                                    child: Image.asset("Assets/seat1.png"),
                                  );
                                })),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22,right: 20),
                        child: SizedBox(
                            height: height/2.2,
                            width: width / 3,
                            child: GridView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 21,
                                gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
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
                    )
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
