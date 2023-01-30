import 'package:bbs_app/styles/title_banner.dart';
import 'package:flutter/material.dart';
import '../modules/module_01.dart';
import '../modules/module_02.dart';
import '../modules/module_03.dart';
import '../modules/module_04.dart';
import '../modules/module_05.dart';
import '../modules/module_06.dart';
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
              titleBanner(title: "নমুনা শুমারি প্রশ্ন ও তথ্য সংগ্রহ"),
              //pageView
              const SizedBox(height: 10,),
              buildPageView(),
              const SizedBox(height: 10,),

              //Submit and Draft button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(0, 140, 68, 1)),
                    child: const Center(
                      child: Text(
                        'খসড়া করুন',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color.fromRGBO(0, 140, 68, 1),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'জমা দিন',
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

  Expanded buildPageView() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.outer,
                blurRadius: 15,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.40),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 20),
          child: PageView(
            controller: PageController(initialPage: 3),
            scrollDirection: Axis.horizontal,
            children: const [
              Module01(),
              Module02(),
              Module03(),
              Module04(),
              Module05(),
              Module06(),

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
                child: const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.menu, color: Colors.black)))),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home_outlined, color: Colors.black)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.black)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email_outlined, color: Colors.black)),
        const Spacer(),

        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'আমিনুল ইসলাম',
                      style: TextStyle(
                          color: Color.fromRGBO(107, 105, 105, 1),
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'তথ্য সংগ্রহকারী',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 9,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const MyCircleAvatar(
                  radius: 22, imagePath: 'assets/images/userImage.png'),
            ],
          ),
        ),

        // ListTile(, icon:Icon(Icons.email_outlined,color:Colors.black)),
      ],
    );
  }
}
