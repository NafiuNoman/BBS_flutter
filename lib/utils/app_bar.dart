import 'package:flutter/material.dart';

import '../widgets/my_circular_avatar.dart';
AppBar myAppBar(BuildContext context) {

// TextStyle tStyle =  TextStyle(color:Colors.black,fontSize: 10,fontWeight: FontWeight.w400);
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 70,
    actions: [
      Builder(builder:(context)=>
          InkWell(onTap: (){Scaffold.of(context).openDrawer();},child: IconButton(onPressed: null, icon:Icon(Icons.menu,color:Colors.black)))),
      IconButton(onPressed: (){}, icon:Icon(Icons.home_outlined,color:Colors.black)),
      IconButton(onPressed: (){}, icon:Icon(Icons.notifications_outlined,color:Colors.black)),
      IconButton(onPressed: (){}, icon:Icon(Icons.email_outlined,color:Colors.black)),
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
                Text('Aminul Islam',style: TextStyle(color:Color.fromRGBO(107, 105, 105, 1),fontSize: 11,fontWeight: FontWeight.w500),),
                Text('Data Collector',style: TextStyle(color:Colors.black,fontSize: 9,fontWeight: FontWeight.w300),),
              ],),
            ),

            MyCircleAvatar(radius: 22, imagePath: 'assets/images/userImage.png'),
          ],

        ),
      ),

      // ListTile(, icon:Icon(Icons.email_outlined,color:Colors.black)),
    ]
    ,
  );
}