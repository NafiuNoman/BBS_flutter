import 'package:bbs_app/widgets/info_container.dart';
import 'package:flutter/material.dart';

import '../widgets/main_button.dart';
import '../widgets/my_circular_avatar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 4,
        leading: Image.asset(
          'assets/images/bbs_logo.png',

          width: 190,
          height: 200,
        ),
        title: RichText(
          text: const TextSpan(
              text: 'Bangladesh Bureau of Statistics\n',
              style: TextStyle(
                color: Color.fromRGBO(0, 140, 68, 1),
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: 'Socio-Economic and Demographic Survey 2022 ',
                  style: TextStyle(
                      color: Color.fromRGBO(196, 22, 28, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
              ]),
        ),

        /// App bar Menu
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.email_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
          ),
          MyCircleAvatar(radius: 25, imagePath: 'assets/images/userImage.png'),
          // Image.asset(
          //   'assets/images/bbs_logo.png',
          //   height: 50,
          //   width: 50,
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              userInfoCardSection(),
              const SizedBox(
                height: 20,

              ),

              ///Four main Button Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MainButton(
                    title: 'New Info',
                    icon: Icons.add_business_outlined ,
                  ),MainButton(
                    title: 'View List',
                    icon: Icons.list_alt_sharp ,
                  ),MainButton(
                    title: 'Data Sync',
                    icon: Icons.sync,
                  ),MainButton(
                    title: 'Message',
                    icon: Icons.message_sharp,
                  ),

                  ///four button
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Tally shit',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(26, 66, 50, 1),
                  fontSize: 18,
                ),
              ),

              ///Tally Sheet Card
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.outer,
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 4),
                        color: Colors.black.withOpacity(0.40),
                      ),
                    ],
                  ),
                  height: 670,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),

                        /// four Button container
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              InfoContainer(
                                  icon: Icons.home_outlined,
                                  title: 'General Household',
                                  count: '20'),
                              InfoContainer(
                                  icon: Icons.home_outlined,
                                  title: 'Institutional  Household',
                                  count: '2'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              InfoContainer(
                                  icon: Icons.ac_unit_outlined,
                                  title: 'Others',
                                  count: '06'),
                              InfoContainer(
                                  icon: Icons.add_business_outlined,
                                  title: 'Total',
                                  count: '28'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'Data Collected Area:',
                        ),
                      ],
                    ),
                  ),
                ),
              )

              ///didid

              //
            ],
          ),
        ),
      ),
    );
  }

  /// User Profile Card
  Padding userInfoCardSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 140, 68, 0.1),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.outer)]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  MyCircleAvatar(
                    radius: 60,
                    // imagePath: 'assets/images/view_list_btn.png',
                    imagePath: 'assets/images/userImage.png',
                  ),
                  Text(
                    'Aminul Islam',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Text(
                    'Data Collector',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Bangladesh Bureau of Statistics',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color.fromRGBO(14, 86, 60, 1)),
                  ),
                  Text(
                    'Department of Statistics and Information Management',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: Color.fromRGBO(29, 66, 50, 1)),
                  ),
                  Text(
                    'Ministry of Planning',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color.fromRGBO(5, 158, 81, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Enumeration area: '),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Data collected so far: ',
                        style: TextStyle(
                            color: Color.fromRGBO(41, 42, 46, 1),
                            fontWeight: FontWeight.w700,fontSize: 14),
                      ),
                      Text('567 household',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 140, 68, 1)))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Data collection remains: ',
                        style: TextStyle(
                          fontSize: 14,
                            color: Color.fromRGBO(41, 42, 46, 1),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '190 Household',
                        style: TextStyle(
                          fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(240, 68, 74, 1)),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
