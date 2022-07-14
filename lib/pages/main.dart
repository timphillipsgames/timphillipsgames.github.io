import 'dart:html';

import 'package:flutter/material.dart';
import '../widgets/imageButton.dart';
import '../widgets/imageButton2.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
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
      color: Colors.blue,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
      child: ListView(
        children: [
          Container(alignment: Alignment.center, child: Text('Tim Phillips')),
          Container(
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text('Game and Experience Design')),
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: MediaQuery.of(context).size.width / 50,
            crossAxisSpacing: MediaQuery.of(context).size.width / 50,
            shrinkWrap: true,
            children: [
              Image.asset('images/b.jpg'),
              ImageButton(),
              //ImageButton2(),
              Image(image: NetworkImage('https://i.imgur.com/FnBv6Jk.jpeg')),
              Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
              Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
              Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
              Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
              Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
            ],
          )
        ],
      ),
    )

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
