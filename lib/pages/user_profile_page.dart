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
        child: SingleChildScrollView(
          child: Column(
            children: [
              profileInfoSection(),
              statisticInfoSection(),
              searchAndFilterSection(),
              mapSection(),
              dataCollectionSection(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox statisticInfoSection() {
    return SizedBox(child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'পরিসংখ্যান তথ্য',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: statusBarColor, fontWeight: FontWeight.w600),
                  ),
                ),
                Image.asset(
                  'assets/images/divider_pic.png',
                  width: 210,
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: EnumerationRow(
                textStyle: TextStyle(fontSize: 12,color: Color.fromRGBO(41, 42, 46, 1),fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'এ পর্যন্ত তথ্য সংগ্রহ করেছেনঃ ',
                  style: TextStyle(
                      color: Color.fromRGBO(41, 42, 46, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
                Text('৫৬৭ খানার',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 140, 68, 1)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'তথ্য সংগ্রহ বাকী রয়েছেঃ ',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(41, 42, 46, 1),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '১৯০ খানার',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(240, 68, 74, 1)),
                )
              ],
            ),

          ],),);
  }

  Padding searchAndFilterSection() {
    return Padding(
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
                        contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(217, 217, 217, 1))),
                        hintText: 'অনুসন্ধান',
                        hintStyle: const TextStyle(fontSize: 12),
                        suffixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  // Filter
                  Flexible(
                    flex: 5,
                    fit: FlexFit.loose,
                    child: DropdownButtonFormField(
                      hint: const Text(
                        'গণনা এলাকা',
                        style: TextStyle(fontSize: 11),
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                        // hintText: 'Sort By',
                        hintStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        prefixIcon: const Icon(Icons.swap_vert),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(217, 217, 217, 1))),

                        focusedBorder: const OutlineInputBorder(),
                      ),
                      items: const [],
                      onChanged: null,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
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
            children: const [
              Text(
                'প্রোফাইল তথ্য',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: MyCircleAvatar(
                    radius: 60, imagePath: 'assets/images/userImage.png'),
              ),
              Text('আমিনুল ইসলাম', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15)),
              Text('তথ্য সংগ্রহকারী', style: TextStyle(color: Colors.white,fontSize: 10)),
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
              boxShadow: const [
                BoxShadow(
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
              children: const [
                DataCollectionIndicator(
                  value: 0.5,
                  btnLabel: 'চালিয়ে যান',
                  areaTitle:'গননা এলাকা ০১ঃ কেরানীগঞ্জ' ,
                ),
                DataCollectionIndicator(
                  value: 0.2,
                  btnLabel: 'চালিয়ে যান',
                  areaTitle: 'গননা এলাকা ০২ঃ নওয়াবগঞ্জ' ,
                ),
                DataCollectionIndicator(
                  value: 1,
                  btnLabel: 'লিস্ট দেখুন',
                  areaTitle: 'গননা এলাকা ০৬ঃ দোহার',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
