import 'package:flutter/material.dart';

import 'common_colors.dart';
Column titleBanner({ required String title,double? dividerWidth}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: statusBarColor, fontWeight: FontWeight.w600),
      ),
      Image.asset(
        'assets/images/divider_pic.png',
        width: dividerWidth?? 230,
      ),
    ],
  );
}