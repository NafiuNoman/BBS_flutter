import 'package:bbs_app/widgets/question_row.dart';
import 'package:flutter/material.dart';

import '../widgets/box_plus_minus_btn.dart';
import '../widgets/my_radio_list.dart';

class Module02 extends StatefulWidget {
  const Module02({Key? key}) : super(key: key);

  @override
  State<Module02> createState() => _Module02State();
}

class _Module02State extends State<Module02> {
  String? q_04_groupValue;
  String? q_05_groupValue;
  String? q_06_groupValue;
  String? q_07_groupValue;
  String? q_09_groupValue;
  String? q_10_groupValue;
  List q_04_TitleListItem = [
    'Separate',
    'Apartment',
    'Attached/Barrack House',
  ];
  List q_05_TitleListItem = [
    'Straw/ Bamboo/ polyhtene/ plastic/ canvas',
    'Soil/ Brick',
    'Tin ( CICit)',
    'Wood',
    'Brick-Cement',
    'Others'
  ];
  List q_06_TitleListItem = [
    'Straw/ Bamboo/ polyhtene/ plastic/ canvas',
    'Tin ( CICit)',
    'Tally',
    'Brick-Cement',
    'Others'
  ];
  List q_07_TitleListItem = [
    'Soil',
    'Wood/Bamboo',
    'Brick-Cement',
    'Mosaic-Tiles',
    'Others'
  ];
  List q_09_TitleListItem = ['Yes', 'No'];
  List q_10_TitleListItem = ['Yes', 'No'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Module 2: Household Information ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          QuestionRow(
            questionNo: 'Q 4:',
            question: 'Household Type',
          ),
          MyRadioList(height: 50, radioList: q_04_TitleListItem, groupValue: q_04_groupValue, onChange: (value) {
              setState(() {
                q_04_groupValue = value;
              });
            }),
          QuestionRow(
              questionNo: 'Q 5:', question: 'Main household wall build with'),
          MyRadioList(height: 90, radioList: q_05_TitleListItem, groupValue: q_05_groupValue, onChange: (value) {
              setState(() {
                q_05_groupValue = value;
              });
            }),

          QuestionRow(
              questionNo: 'Q 6:', question: 'Main household roof build with'),
          MyRadioList(height: 90, radioList: q_06_TitleListItem, groupValue: q_06_groupValue, onChange: (value) {
            setState(() {
              q_06_groupValue = value;
            });
          }),
          QuestionRow(
              questionNo: 'Q 7:', question: 'Main household floor item'),
          MyRadioList(height: 50, radioList: q_07_TitleListItem, groupValue: q_07_groupValue, onChange: (value) {
            setState(() {
              q_07_groupValue = value;
            });
          }),
          QuestionRow(questionNo: 'Q 8:', question: 'Living Place'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('a.',style: TextStyle(color:textColor,fontWeight: FontWeight.w600 ),),
                  Text(' Total room number'),
                  SizedBox(width: 100,child: BoxPlusMinusBtn()),
                ],
              ),
              Row(
                children: [
                  Text('b.',style: TextStyle(color:textColor,fontWeight: FontWeight.w600 )),
                  Text(' Bedroom number'),
                  SizedBox(width: 100,child: BoxPlusMinusBtn()),
                ],
              ),
            ],
          ),
          QuestionRow(questionNo: 'Q 9:', question: 'Is this a slum?'),
          MyRadioList(height: 40, radioList: q_09_TitleListItem, groupValue: q_09_groupValue, onChange: (value) {
              setState(() {
                q_09_groupValue = value;
              });
            }),
          QuestionRow(questionNo: 'Q :', question: 'Cancellation Form'),
          MyRadioList(height: 30, radioList: q_10_TitleListItem, groupValue: q_10_groupValue, onChange: (value) {
              setState(() {
                q_10_groupValue = value;
              });
            }),
        ],
      ),
    );
  }

//new one


}

