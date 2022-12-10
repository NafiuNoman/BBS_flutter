import 'package:bbs_app/widgets/google_map.dart';
import 'package:bbs_app/widgets/my_circular_avatar.dart';
import 'package:flutter/material.dart';

import '../styles/common_colors.dart';
import '../utils/drawer_layout.dart';
import '../widgets/data_collection_indicator.dart';
import '../widgets/enamuration_row.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.email_outlined,
                color: Colors.black,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            profileInfoSection(),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Survey Data Collection List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: statusBarColor, fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    'assets/images/divider_pic.png',
                    width: 230,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: EnumerationRow(
                textStyle: TextStyle(fontSize: 12,color: Color.fromRGBO(153, 153, 153, 1)),
              ),
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Search
                    Flexible(
                      flex: 5,
                      fit: FlexFit.loose,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 1))),
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 12),
                          suffixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 7,
                    ),
                    // Filter
                    Flexible(
                      flex: 5,
                      fit: FlexFit.loose,
                      child: DropdownButtonFormField(
                        hint: Text(
                          'Sort by',
                          style: TextStyle(fontSize: 11),
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                          // hintText: 'Sort By',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                          prefixIcon: Icon(Icons.swap_vert),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 1))),

                          focusedBorder: OutlineInputBorder(),
                        ),
                        items: [],
                        onChanged: null,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            mapSection(),
            dataCollectionSection(),
          ],
        ),
      ),
    );
  }

  AspectRatio profileInfoSection() {
    return AspectRatio(
        aspectRatio: 10 / 4,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.inner,
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(0, 4))
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcOver),
              image: const AssetImage(
                'assets/images/tree_bac.jpg',
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Profile information',
                style: TextStyle(color: Colors.white),
              ),
              const MyCircleAvatar(
                  radius: 60, imagePath: 'assets/images/userImage.png'),
              const Text('Aminul Islam', style: TextStyle(color: Colors.white)),
              const Text('Data Collector', style: TextStyle(color: Colors.white)),
            ],
          ),
        ));
  }

  Padding mapSection() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AspectRatio(
          aspectRatio: 10 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                const BoxShadow(
                    blurStyle: BlurStyle.inner,
                    offset: Offset(0, 4),
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 0.5)
              ],
              border: Border.all(width: 1.5, color: Colors.lightGreen),
            ),
            child: const MapView(),
          )),
    );
  }

  Padding dataCollectionSection() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AspectRatio(
        aspectRatio: 10 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const DataCollectionIndicator(
                  value: 0.5,
                  btnLabel: 'Continue',
                ),
                const DataCollectionIndicator(
                  value: 0.2,
                  btnLabel: 'Continue',
                ),
                const DataCollectionIndicator(
                  value: 1,
                  btnLabel: 'View List',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
