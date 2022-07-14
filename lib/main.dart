import 'dart:html';

import 'package:flutter/material.dart';
import 'widgets/imageButton.dart';
import 'bude.dart';
import 'corbynrun.dart';
import 'corbynrun2.dart';
import 'invisiblegarden.dart';
import 'kerdroya.dart';
import 'scilly.dart';
import 'stagnes.dart';
import 'innovate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tim Phillips Game and Experience Design',
        theme: ThemeData(
            //primarySwatch: Colors.green,
            ),
        home:
            const MyHomePage(title: 'Tim Phillips Game and Experience Design'),
        routes: <String, WidgetBuilder>{
          Bude.routeName: (context) => Bude(),
          Corbynrun.routeName: (context) => Corbynrun(),
          Corbynrun2.routeName: (context) => Corbynrun2(),
          Invisiblegarden.routeName: (context) => Invisiblegarden(),
          Scilly.routeName: (context) => Scilly(),
          Stagnes.routeName: (context) => Stagnes(),
          Kerdroya.routeName: (context) => Kerdroya(),
          Innovate.routeName: (context) => Innovate(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            margin: EdgeInsets.only(
                //top: 70,
                //left: MediaQuery.of(context).size.width / 10,
                //right: (MediaQuery.of(context).size.width / 10),
                ),
            child: ListView(
              children: [
                Container(
                    color: Colors.white,
                    child: Column(children: [
                      Container(
                          margin: EdgeInsets.only(top: 70),
                          alignment: Alignment.center,
                          child: Text('Tim Phillips',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 60,
                              ))),
                      Container(
                          margin: EdgeInsets.only(bottom: 40),
                          alignment: Alignment.center,
                          child: Text(
                            'Game and Experience Design',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 40),
                          )),
                    ])),
                Container(
                    margin: EdgeInsets.only(
                        top: 160,
                        bottom: 140,
                        left: MediaQuery.of(context).size.width / 10),
                    child: Text(
                      "Hi there, I'm Tim Phillips. I'm a lecturer at Falmouth University ",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 25,
                          color: Colors.white),
                    )),
                Container(
                    color: Colors.black,
                    margin: EdgeInsets.only(
                        //top: 40,
                        left: MediaQuery.of(context).size.width / 10,
                        right: (MediaQuery.of(context).size.width / 10)),
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 1.4,
                      //mainAxisSpacing: 50,
                      crossAxisSpacing: MediaQuery.of(context).size.width / 40,
                      shrinkWrap: true,
                      children: [
                        ImageButton('images/bude2.png', 'A picture of a wheel',
                            '/bude'),
                        ImageButton('images/stagnes.png',
                            'A picture of a wheel', '/stagnes'),
                        ImageButton('images/kerdroya.png',
                            'A picture of a wheel', '/kerdroya'),
                        ImageButton('images/scilly.png', 'A picture of a wheel',
                            '/scilly'),
                        ImageButton('images/cr2.png', 'A picture of a wheel',
                            '/corbynrun2'),
                        ImageButton('images/i.jpg', 'A picture of a wheel',
                            '/innovate'),
                        ImageButton('images/cr.png', 'A picture of a wheel',
                            '/corbynrun'),
                        ImageButton('images/ig.jpg', 'A picture of a wheel',
                            '/invisiblegarden'),
                      ],
                    ))
              ],
            ))

        /*
        Container(
      color: Colors.blue,
      //margin: EdgeInsets.only(
      //left: MediaQuery.of(context).size.width / 10,
      //right: (MediaQuery.of(context).size.width / 10),
      //  ),
      child: ListView(
        children: [
          //Container(alignment: Alignment.center, child: Text('Tim Phillips')),
          //Container(
          // color: Colors.orange,
          //alignment: Alignment.center,
          //child: Text('Game and Experience Design')),
          
        ],
      ),
    )
    */

        /*ListView(children: [
      Container(
        alignment: Alignment.center,
        child: Column(children: [
          Text('Tim Phillips'),
          Text('Game Design'),
          GridView.count(
            crossAxisCount: 3,
            children: [
              Text('Tim Phillips'),
              Text('Game Design'),
              Text('Tim Phillips'),
              Text('Game Design'),
            ],
          )
        ]),
      )
    ])
    
    */
        );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
