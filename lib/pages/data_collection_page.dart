import 'package:bbs_app/styles/title_banner.dart';
import 'package:bbs_app/widgets/box_plus_minus_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../modules/module_01.dart';
import '../modules/module_02.dart';
import '../widgets/double_counter_queation.dart';
import '../widgets/my_circular_avatar.dart';

class DataCollectionPage extends StatefulWidget {
  const DataCollectionPage({Key? key}) : super(key: key);

  @override
  State<DataCollectionPage> createState() => _DataCollectionPageState();
}

class _DataCollectionPageState extends State<DataCollectionPage> {
  int _currentStep = 0;
  final controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              titleBanner(title: "Data Collection Page"),

              // SizedBox(
              //   width: double.infinity,
              //   height: double.infinity,
              //   child: PageView(scrollDirection: Axis.horizontal,children: [
              //     Container(color: Colors.pinkAccent,),
              //     Container(color: Colors.grey,),
              //     Container(color: Colors.yellow,),
              //
              //
              //   ],),
              // ),
              // Expanded(child: PageView(
              //   scrollDirection: Axis.horizontal,
              //
              //   children: [
              //     Module01(),
              //     Module02(),
              //   ],
              //
              //
              // )),
              Expanded(


                child: PageView(scrollDirection: Axis.horizontal,

                    children: [
                      Module01(),
                      Module02(),
                    ],),
              ),
              // Module02(),

              //Submit and Draft button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(0, 140, 68, 1)),
                    child: Center(
                      child: Text(
                        'Save as Draft',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromRGBO(0, 140, 68, 1),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 140, 68, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar myAppBar() {
// TextStyle tStyle =  TextStyle(color:Colors.black,fontSize: 10,fontWeight: FontWeight.w400);
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 70,
      actions: [
        Builder(
            builder: (context) => InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.menu, color: Colors.black)))),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.home_outlined, color: Colors.black)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, color: Colors.black)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.email_outlined, color: Colors.black)),
        Spacer(),

        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aminul Islam',
                      style: TextStyle(
                          color: Color.fromRGBO(107, 105, 105, 1),
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Data Collector',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 9,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              MyCircleAvatar(
                  radius: 22, imagePath: 'assets/images/userImage.png'),
            ],
          ),
        ),

        // ListTile(, icon:Icon(Icons.email_outlined,color:Colors.black)),
      ],
    );
  }

  final pageView = PageView(
    scrollDirection: Axis.vertical,
    children: [
      Module01(),
      Module02(),
    ],
  );
}
