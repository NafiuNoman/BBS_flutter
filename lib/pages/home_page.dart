import 'package:bbs_app/pages/data_collection_list_page.dart';
import 'package:bbs_app/pages/data_collection_page.dart';
import 'package:bbs_app/pages/user_profile_page.dart';
import 'package:bbs_app/widgets/google_map.dart';
import 'package:bbs_app/widgets/info_container.dart';
import 'package:flutter/material.dart';
import '../utils/drawer_layout.dart';
import '../widgets/enamuration_row.dart';
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
      drawer: const AppDrawer(),
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
        actions: [
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
          Builder(
            builder: (context) => InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.menu_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (buidcontext) => UserProfilePage()));
              },
              child: MyCircleAvatar(
                  radius: 25, imagePath: 'assets/images/userImage.png')),
          // Image.asset(
          //   'assets/images/bbs_logo.png',
          //   height: 50,
          //   width: 50,
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// User Info View Card
            userInfoCardSection(),
            // const SizedBox(height: 20),

            ///Four main Button Row
            fourButtonsSection(),
            // const SizedBox(height: 30),

            const Text(
              'Tally sheet',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(26, 66, 50, 1),
                fontSize: 18,
              ),
            ),

            ///Tally Sheet Card
            tallySheetSection()

            //
          ],
        ),
      ),
    );
  }

  /// Profile Card
  Padding userInfoCardSection() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 140, 68, 0.1),
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(blurRadius: 5, blurStyle: BlurStyle.outer)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// profile image & name
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    MyCircleAvatar(
                      radius: 60,
                      // imagePath: 'assets/images/view_list_btn.png',
                      imagePath: 'assets/images/userImage.png',
                    ),
                    Text(
                      'Aminul Islam',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Data Collector',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 10, height: 1),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
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
                          fontSize: 12,
                          color: Color.fromRGBO(5, 158, 81, 1)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Text('Enumeration area: '),
                        EnumerationRow(
                          textStyle: TextStyle(
                              color: Color.fromRGBO(41, 42, 46, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Data collected so far: ',
                          style: TextStyle(
                              color: Color.fromRGBO(41, 42, 46, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                        Text('567 household',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color.fromRGBO(0, 140, 68, 1)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Data collection remains: ',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(41, 42, 46, 1),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '190 Household',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(240, 68, 74, 1)),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Main Four Button Section
  Row fourButtonsSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  const [
        MainButton(
          page: DataCollectionPage(),
          title: 'New Info',
          imagePath: 'assets/images/mainbutton/newinfo.png',
        ),

        MainButton(
          page: DataCollectionListPage(),
          title: 'View List',
          imagePath:'assets/images/mainbutton/viewlist.png',
        ),

        MainButton(
          page: Text('data'),
          title: 'Data Sync',
          imagePath: 'assets/images/mainbutton/datasync.png',
        ),
        MainButton(
          page: Text('data'),
          title: 'Message',
          imagePath:'assets/images/mainbutton/message.png',
        ),

        ///four button
      ],
    );
  }

  /// Tally Sheet Card
  Padding tallySheetSection() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
                  children:  [
                    InfoContainer(
                      imagePath:'assets/images/talley/talley1.png' ,

                        title: 'General Household',
                        count: '20'),
                    InfoContainer(
                      imagePath:'assets/images/talley/talley4.png' ,

                        title: 'Institutional  Household',
                        count: '2'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    InfoContainer(
                        imagePath:'assets/images/talley/talley2.png' ,
                        title: 'Others',
                        count: '06'),
                    InfoContainer(
                        imagePath: 'assets/images/talley/talley3.png',
                        title: 'Total',
                        count: '28'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Data Collected Area:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(29, 66, 50, 1),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.inner,
                          offset: Offset(0, 4),
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 0.5)
                    ],
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: MapView(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
