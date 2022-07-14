import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({Key? key}) : super(key: key);

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
