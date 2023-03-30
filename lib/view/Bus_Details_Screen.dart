import 'package:flutter/material.dart';
import 'package:moovebe/view/Driver_List_Screen.dart';
import 'package:moovebe/view/constant/My_Functions.dart';

import 'Widgets/Bus_Driver_Selction.dart';
import 'Widgets/listview_busdetails.dart';
import 'constant/colors.dart';

class Details_Screen extends StatelessWidget {
  const Details_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          backgroundColor: contnercolor,
          title: Center(
            child: SizedBox(
              height: 50,
              width: 150,
              child: Image.asset("Assets/appbar.png"),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bus_Driver(clor: backgrndClr, firstname: 'Bus', secndname: 'Manage your bus', imag: 'Assets/bus.png',),
                  InkWell(onTap: (){
                    callNext(const Driver_List(), context);
                  },
                      child: bus_Driver(clor: contnercolor, firstname: 'Driver', secndname: 'Manage your driver', imag: 'Assets/driver.png',)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("21 Buses Found",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.grey),),
            ),
             Center(
              child:listview_builder()
            )
          ],
        ),
      ),
    );
  }
}
