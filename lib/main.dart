import 'package:bbs_app/pages/home_page.dart';
import 'package:bbs_app/pages/map_page.dart';
import 'package:bbs_app/styles/common_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: statusBarColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Homepage(),
    );
  }
}

