import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String path;
  final String caption;
  const ImageButton(this.path, this.caption);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Image.asset(path),
        onTap: () {
          Navigator.pushNamed(context, '/bude');
        });
  }
}

/*
        GestureDetector(
            child: Image.asset(path),
            onTap: () {
              Navigator.pushNamed(context, '/bude');
            }
            ),
*/
