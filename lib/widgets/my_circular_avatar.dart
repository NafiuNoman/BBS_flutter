import 'package:flutter/material.dart';
class MyCircleAvatar extends StatelessWidget {

  final double radius;
  final String imagePath;
  const MyCircleAvatar({
    Key? key, required this.radius, required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(imagePath),

      radius: radius,
    );
  }
}