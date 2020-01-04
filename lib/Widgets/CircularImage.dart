
import 'package:flutter/material.dart';


class CircleImage extends StatelessWidget {

  final NetworkImage image;
  final double height;
  const CircleImage({Key key, this.image, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Center(
      child: new Container(
          width: height,
          height: height,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: image
              )
          )
      ),
    );
  }
}