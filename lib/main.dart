import 'dart:html';

import 'package:flutter/material.dart';
import 'widgets/imageButton.dart';
import 'widgets/imageButton2.dart';
import 'bude.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: <String, WidgetBuilder>{
          Bude.routeName: (context) => Bude(),
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
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 50,
              right: (MediaQuery.of(context).size.width / 50),
            ),
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0, //MediaQuery.of(context).size.width / 4,
              shrinkWrap: true,
              children: [
                ImageButton('images/b.jpg', 'A picture of a wheel'),
                ImageButton('images/cr.png', 'A picture of a wheel'),
                ImageButton('images/cr2.png', 'A picture of a wheel'),
                ImageButton('images/i.jpg', 'A picture of a wheel'),
                ImageButton('images/ig.jpg', 'A picture of a wheel'),
                ImageButton('images/os.png', 'A picture of a wheel'),
                //ImageButton('images/b.jpg', 'A picture of a wheel'),
                //ImageButton('images/b.jpg', 'A picture of a wheel'),
                //ImageButton('images/b.jpg', 'A picture of a wheel'),
                /*
        Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
        Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
        Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
        Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
        Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        )
        */
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
