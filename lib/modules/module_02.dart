import 'package:bbs_app/widgets/my_radioListTile.dart';
import 'package:bbs_app/widgets/question_row.dart';
import 'package:flutter/material.dart';

class Module02 extends StatefulWidget {
  const Module02({Key? key}) : super(key: key);

  @override
  State<Module02> createState() => _Module02State();
}

class _Module02State extends State<Module02> {
  String? groupValue;

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
          QuestionRow(questionNo: 'Q 4:', question: 'Household Type'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,

            children: [
              // MyRadioListTile(value: 'Separate'),
              // MyRadioListTile(value: 'Apartment'),
              // MyRadioListTile(value: 'Attached/Barrack House'),
              // Expanded(
              //   child: RadioListTile(
              //
              //     visualDensity:VisualDensity(horizontal: -4.0),
              //     dense: true,
              //     contentPadding: EdgeInsets.zero,
              //     value: 'apartment',
              //     groupValue: groupValue,
              //     onChanged: (value) {
              //       setState(() {
              //         groupValue = value.toString();
              //       });
              //     },
              //     title: Text('Apartment',style: TextStyle(fontSize: 11,height: 1),),
              //   ),
              // ),
              buildRadioListTile(value: 'Separate'),
              buildRadioListTile(value: 'Apartment'),
              buildRadioListTile(value: 'Attached/Barrack House'),

            ],
          ),
          QuestionRow(questionNo: 'Q 5:', question: 'Main household wall build with'),
          Wrap(


            children: [

              buildRadioListTile(value: 'Straw/ Bamboo/ polyhtene/ plastic/ canvas'),
              buildRadioListTile(value: 'Tin (CICit)'),
              buildRadioListTile(value: 'Tally'),
              buildRadioListTile(value: 'Brick-cement'),
              buildRadioListTile(value: 'Others'),

            ],
          ),
          QuestionRow(
              questionNo: 'Q 6:', question: 'Main household roof build with'),
          QuestionRow(
              questionNo: 'Q 7:', question: 'Main household floor item'),
          QuestionRow(questionNo: 'Q 8:', question: 'Living Place'),
          QuestionRow(questionNo: 'Q 9:', question: 'Is this a slum?'),
          QuestionRow(questionNo: 'Q :', question: 'Cancellation Form'),
        ],
      ),
    );
  }

  Widget buildRadioListTile({required String value}) {
    return Flexible(
              child: RadioListTile(
                visualDensity:VisualDensity(horizontal: -4.0),
                dense: true,
                contentPadding: EdgeInsets.zero,
                value: value,
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value.toString();
                  });
                },
                title: Text(value,style: TextStyle(fontSize: 11,height: 1),),
              ),
            );
  }
}
