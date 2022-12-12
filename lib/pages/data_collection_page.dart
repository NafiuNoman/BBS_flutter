import 'package:bbs_app/styles/title_banner.dart';
import 'package:bbs_app/utils/app_bar.dart';
import 'package:bbs_app/widgets/box_plus_minus_btn.dart';
import 'package:flutter/material.dart';

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
        child: Column(

            children:[
              titleBanner(title: "Data Collection page"),
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
              Row(children: [
                Expanded(flex: 1,child: Text('Q')),
                Expanded(flex: 1,child: Text('3A')),
                Expanded(flex: 6,child: Text('Member Usually Live')),
                Expanded(flex: 3,child: BoxPlusMinusBtn()),
                Expanded(flex: 3,child: BoxPlusMinusBtn()),
                Expanded(flex: 1,child: Container(child: Text('8'),decoration: plusMinusBoxDecoration,))

                
              ],)


            ],


          
        ),
      ),
    );
  }
}


