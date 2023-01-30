import 'package:flutter/material.dart';

import '../styles/common_colors.dart';
class MySectionHeading extends StatelessWidget {
  final String heading;
  const MySectionHeading({
    Key? key, required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Center(child: Text(heading,style: const TextStyle(color: statusBarColor,fontWeight: FontWeight.w600),)),
    );
  }
}

