import 'package:flutter/material.dart';
import 'package:moovebe/view/Bus_Details_Screen.dart';
import 'package:moovebe/view/Driver_List_Screen.dart';
import 'package:moovebe/view/Start_Screen.dart';
import 'package:moovebe/view/Welcome_Screen.dart';
import 'package:moovebe/view/ksrtc_Seat_Availability.dart';
import 'package:moovebe/view/ksrtc_Seat_Avilability2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Start_Screen()
    );
  }
}
