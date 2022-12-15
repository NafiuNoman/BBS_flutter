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
      appBar: myAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              titleBanner(title: "Data Collection page"),
              DoubleCounterQuestion(number: '3a',question:'Memner Usually live',),
              DoubleCounterQuestion(number: '3b',question:'Members: People who usually live in the house but are currently absent',),
              DoubleCounterQuestion(number: '3c',question:'Members of the household currently live abroad',),
              DoubleCounterQuestion(number: '3d',question:'Guest',),
              DoubleCounterQuestion(number: '3e',question:'Members of the household have gone abroad and returned (within the last 5 years)',),

            ],
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
