import 'package:flutter/material.dart';

class Stagnes extends StatelessWidget {
  static const String routeName = '/stagnes';
  const Stagnes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
      shrinkWrap: true,
      children: [
        Container(
            margin: EdgeInsets.only(
                top: 70,
                left: MediaQuery.of(context).size.width / 7,
                right: MediaQuery.of(context).size.width / 7),
            child: Image.asset(
              'images/stagnes.png',
              fit: BoxFit.fitWidth,
            )),
        Container(
          margin: EdgeInsets.only(
              top: 40, bottom: 40, left: MediaQuery.of(context).size.width / 5),
          child: Text('StAgnes Harbour VR Experience',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 40)),
          //alignment: Alignment.center,
        ),
        Container(
          margin: EdgeInsets.only(
              top: 0,
              bottom: 40,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5),
          child: Text(
              "The beach at Trevaunance Cove in Cornwall has been carpeted with bricks for over 100 years since its once bustling harbour collapsed. The StAgnes Museum VR Experience saw my team and I recreating for visitors to the StAgnes museum, the experince of sitting on the harbour wall circa 1900.",
              style: TextStyle(fontSize: 18)),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 0,
              bottom: 40,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5),
          child: Text(
              "The experience was co-designed by myself and the staff at the museum, devloped in Unreal 4 and deployed on the Vive Pro.",
              style: TextStyle(fontSize: 18)),
        ),

        //alignment: Alignment.center,
      ],
    )));
  }
}
