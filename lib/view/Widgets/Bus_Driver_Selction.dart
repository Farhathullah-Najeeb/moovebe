import 'package:flutter/material.dart';

class bus_Driver extends StatelessWidget {
  final Color clor;
  final String firstname;
  final String secndname;
  final String imag;

  const bus_Driver(
      {Key? key,
      required this.clor,
      required this.firstname,
      required this.secndname,
      required this.imag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .30,
      width: width * .45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: clor,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstname,
              style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            Text(
              secndname,
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: height * .20,
                  width: width * .30,
                  child: Image(
                    image: AssetImage(imag),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
