import 'package:flutter/material.dart';

class Bude extends StatelessWidget {
  static const String routeName = '/bude';
  const Bude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          children: [
            Expanded(child: Image.asset('images/b.jpg')),
            Text('title'),
          ],
        ));
  }
}
