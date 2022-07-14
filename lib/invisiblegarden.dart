import 'package:flutter/material.dart';

class Invisiblegarden extends StatelessWidget {
  static const String routeName = '/invisiblegarden';
  const Invisiblegarden({Key? key}) : super(key: key);

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
              'images/ig.jpg',
              fit: BoxFit.fitWidth,
            )),
        Container(
          margin: EdgeInsets.only(
              top: 40, bottom: 40, left: MediaQuery.of(context).size.width / 5),
          child: Text('Invisible Garden',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 40)),
          //alignment: Alignment.center,
        ),
        Container(
          margin: EdgeInsets.only(
              top: 0, bottom: 40, left: MediaQuery.of(context).size.width / 5),
          child: Text(
              "Captaining the Ceres was a VR installation created for Bude museum as part of the wAVE project. ",
              style: TextStyle(fontSize: 18)),
        ),

        //alignment: Alignment.center,
      ],
    )));
  }
}
