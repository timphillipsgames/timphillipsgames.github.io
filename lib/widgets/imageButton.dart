import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String path;
  final String caption;
  final String route;
  const ImageButton(this.path, this.caption, this.route);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Image.asset(path),
        onTap: () {
          Navigator.pushNamed(context, route);
        });
  }
}
