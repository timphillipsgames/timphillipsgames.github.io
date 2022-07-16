import 'package:flutter/material.dart';

class Scilly extends StatelessWidget {
  static const String routeName = '/scilly';
  const Scilly({Key? key}) : super(key: key);

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
              'images/scilly.png',
              fit: BoxFit.fitWidth,
            )),
        Container(
          margin: EdgeInsets.only(
              top: 40, bottom: 40, left: MediaQuery.of(context).size.width / 5),
          child: Text('Isles of Scilly Museum Walking Companion',
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
              "The Isles of Scilly Museum Walking Companion is a mobile app created by my teams and I as part of the wAVE project I alongside the staff at the Scilly Museum. The app allows visitors to the Isles of Scilly to select historical topics of interest and then receive phone alerts when they are physically near to relevant historical sites. I was responsible for project management, co-design, and programming. The app was made in flutter and is available for both iOS and Android.\n\nThe app delivers bespoke media content written by the museum staff. The staff can update the app and drop new ‘pins’ around the islands via a web interface that we also created.",
              style: TextStyle(fontSize: 18)),
        ),

        //alignment: Alignment.center,
      ],
    )));
  }
}
