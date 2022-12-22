import 'package:bbs_app/styles/title_banner.dart';
import 'package:bbs_app/widgets/box_plus_minus_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/double_counter_queation.dart';
import '../widgets/my_circular_avatar.dart';

class DataCollectionPage extends StatefulWidget {
  const DataCollectionPage({Key? key}) : super(key: key);

  @override
  State<DataCollectionPage> createState() => _DataCollectionPageState();
}

class _DataCollectionPageState extends State<DataCollectionPage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                titleBanner(title: "Data Collection Page"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Module 1: Household Information ',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Q 1a:',
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      flex: 18,
                      child: Text(
                        'Household Address',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          // fontFamily: 'Hind',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                      hintStyle: const TextStyle(fontSize: 12),
                      suffixIcon: const Icon(Icons.edit),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Q 2a:',
                        style: const TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Text(
                    //     number,
                    //     textAlign: TextAlign.start,
                    //   ),
                    // ),
                    Expanded(
                      flex: 18,
                      child: Text(
                        'Sample Census Household no.',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          // fontFamily: 'Hind',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Q 2b:',
                        style: const TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Text(
                    //     number,
                    //     textAlign: TextAlign.start,
                    //   ),
                    // ),
                    Expanded(
                      flex: 18,
                      child: Text(
                        'Census Household no.',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          // fontFamily: 'Hind',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                      hintStyle: TextStyle(fontSize: 12),
                      suffixIcon: Icon(Icons.edit),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                /////counter form start from here

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Q 3:',
                        style: const TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Text(
                    //     number,
                    //     textAlign: TextAlign.start,
                    //   ),
                    // ),
                    Expanded(
                      flex: 18,
                      child: Text(
                        'Household Members',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          // fontFamily: 'Hind',
                        ),
                      ),
                    ),
                  ],
                ),
                DoubleCounterQuestion(
                  number: '3a.',
                  question: 'Memner Usually live',
                ),
                DoubleCounterQuestion(
                  number: '3b.',
                  question:
                      'Members: People who usually live in the house but are currently absent',
                ),
                DoubleCounterQuestion(
                  number: '3c.',
                  question: 'Members of the household currently live abroad',
                ),
                DoubleCounterQuestion(
                  number: '3d.',
                  question: 'Guest',
                ),
                DoubleCounterQuestion(
                  number: '3e.',
                  question:
                      'Members of the household have gone abroad and returned (within the last 5 years)',
                ),
                SizedBox(height: 30,),

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
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),

                    Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color:Color.fromRGBO(0, 140, 68, 1),),
                         ),
                      child: Center(
                        child: Text(

                          'Submit',
                          style: TextStyle(color: Color.fromRGBO(0, 140, 68, 1),fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
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

}

// SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child: Stepper(type: StepperType.horizontal,
//     steps: [
//
//       Step(title:Text('Household Information'),content: Text('First page'),),
//       Step(title:Text('Home related'), content: Text('Second page'),),
//       // Step(title:Text('Food related'), content: Text('Third page'),),
//       // Step(title:Text('Person related'), content: Text('Forth page'),),
//       // // Step(title:Text('rafiu'), content: Icon(Icons.grade_outlined),),
//
//     ],
//     onStepTapped: (currentIndex){
//       setState((){
//
//         _currentStep = currentIndex;
//       });
//
//
//     },
//
//     currentStep: _currentStep,
//   ),
// )
