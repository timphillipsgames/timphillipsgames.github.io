import 'package:flutter/material.dart';

class ImageButton2 extends StatelessWidget {
  const ImageButton2({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 54, 244, 73),
        child: Column(
          children: [
            Image.asset('images/b.jpg'),
            Text('title'),
          ],
        ));
  }
}
