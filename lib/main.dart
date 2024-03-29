import 'package:bbs_app/pages/data_collection_page.dart';
import 'package:bbs_app/pages/login_page.dart';
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

        radioTheme: RadioThemeData(visualDensity:VisualDensity(horizontal: -4.0),),


        listTileTheme: ListTileThemeData(horizontalTitleGap: 0),

        primarySwatch: Colors.blue,
        fontFamily: 'Hind'
      ),
      home: DataCollectionPage(),
    );
  }
}

