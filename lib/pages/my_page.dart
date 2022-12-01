import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GridView.count(crossAxisCount: 3,children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.purpleAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.blue,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.greenAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.pink,),
                  ),

                ],),
              ],
            ),
          ),
          // Text('sss',style: TextStyle(fontSize: 25),),


    );
  }
}
