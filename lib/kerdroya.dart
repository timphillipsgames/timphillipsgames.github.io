import 'package:flutter/material.dart';

class Kerdroya extends StatelessWidget {
  static const String routeName = '/kerdroya';
  const Kerdroya({Key? key}) : super(key: key);

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
              'images/kerdroya.png',
              fit: BoxFit.fitWidth,
            )),
        Container(
          margin: EdgeInsets.only(
              top: 40, bottom: 40, left: MediaQuery.of(context).size.width / 5),
          child: Text("Tregeagle's Kerdroya",
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
              "Tregeagle's Kerdroya is a mobile app that serves to accompany a visit to the Kerdroya Labyrinth on Bodmin moor in Cornwall. As you pace the path of the labyrinth you will encounter the semi-mythical figure of Jan Trageagle, condemned to labour at twelve impossible tasks. I was responsible for parts of the design and programming during the project. The app was co-designed with Golden Tree Productions and created in Unity.",
              style: TextStyle(fontSize: 18)),
        ),

        //alignment: Alignment.center,
      ],
    )));
  }
}
