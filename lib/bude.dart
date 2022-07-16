import 'package:flutter/material.dart';

class Bude extends StatelessWidget {
  static const String routeName = '/bude';
  const Bude({Key? key}) : super(key: key);

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
              'images/bude2.png',
              fit: BoxFit.fitWidth,
            )),
        Container(
          margin: EdgeInsets.only(
              top: 40, bottom: 40, left: MediaQuery.of(context).size.width / 5),
          child: Text('Captaining the Ceres',
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
              "Captaining the Ceres was a permanent VR installation created for The Castle museum in Bude as part of the wAVE project. My team and I recreated the experience of sailing a masted vessel in to Bude sea lock circa 1900. The real sea lock has been shut for coastal trade for many decades. I was responsible for project management, design, and programming. The project was built in Unity and deployed on the Vive Pro.\n\nThe finished installation is comprised of two bespoke wooden cabinets, fitted with two genuine antique ships wheels. The wheels serve as controllers for the VR experience via two arduinos and geared down rotary encoders. The coast line was created from publicly available LIDAR data, making it visually accurate to the real Bude coastline.",
              style: TextStyle(fontSize: 18)),
        ),

        //alignment: Alignment.center,
      ],
    )));
  }
}
