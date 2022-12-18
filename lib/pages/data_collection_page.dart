import 'package:bbs_app/styles/title_banner.dart';
import 'package:bbs_app/utils/app_bar.dart';
import 'package:bbs_app/widgets/box_plus_minus_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/double_counter_queation.dart';

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
                titleBanner(title: "Data Collection page"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Q 1a:',
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
                        'Household Address',
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
                TextFormField(
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
                        'Sample Census Household no',
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
                TextFormField(
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
                        'Census Household no',
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
                TextFormField(
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
                SizedBox(height: 10,),
                /////counter form start from here
                Text(
                  'Module 1: Household Information ',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Q 3',
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
                  number: '3a',
                  question: 'Memner Usually live',
                ),
                DoubleCounterQuestion(
                  number: '3b',
                  question:
                      'Members: People who usually live in the house but are currently absent',
                ),
                DoubleCounterQuestion(
                  number: '3c',
                  question: 'Members of the household currently live abroad',
                ),
                DoubleCounterQuestion(
                  number: '3d',
                  question: 'Guest',
                ),
                DoubleCounterQuestion(
                  number: '3e',
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
                          borderRadius: BorderRadius.circular(2),
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
                          borderRadius: BorderRadius.circular(2),
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
