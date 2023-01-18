import 'package:bbs_app/widgets/my_radio_list.dart';
import 'package:flutter/material.dart';

import '../widgets/my_drop_down.dart';
import '../widgets/my_text_field.dart';
import '../widgets/question_row.dart';

class Module05 extends StatefulWidget {
  const Module05({Key? key}) : super(key: key);

  @override
  State<Module05> createState() => _Module05State();
}

class _Module05State extends State<Module05> {
  String? q_40_value;
  String? q_42_value;
  String? q_44_value;
  String? q_48_groupValue;
  String? q_46_groupValue;
  List<String> q_40_item_list = [
    '1. Yes',
    '2. Had work but did not work due to vacation or illness ',
    '3. No',


  ];
  List<String> q_42_item_list = [
    '1- Student',
    '2 - Housewife and child rearing ',
    '3 - Old Age / Retired',

    '4 - Physical and mental problems',
    '5 - Illness/ accident',
    "6 - Didn't get a job",



  ];
  List<String> q_44_item_list = [
    '1- Recruiter',
    '2 - Employees ',
    '3 - Self-employed - Agriculture ',

    '4 - Self-employed - Non-agricultural',
    '5 - Family Helper',
    '6 - Others',



  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Module 5: Financial Information',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const QuestionRow(
            questionNo: 'Q 40:',
            question:
                'Name - Were you engaged in any gainful activity for at least 1 hour during the last 7 days?',
          ),
          MyDropDown(items: q_40_item_list,dropDownCallback: (String text) {
            setState(() {

              q_40_value = text;

            });
          },),


          const QuestionRow(
            questionNo: 'Q 41:',
            question: 'Name - Total number of hours worked in last 7 days?',
          ),
          MyTextField(
            width: 250,
            icon: Icons.edit,
            inputType: TextInputType.number,
          ),
          const QuestionRow(
            questionNo: 'Q 42:',
            question:
                'Name - What is the main reason for not working in the last 7 days?',
          ),
          MyDropDown(items: q_42_item_list,dropDownCallback: (String text) {
            setState(() {

              q_42_value = text;

            });
          },),

          const QuestionRow(
            questionNo: 'Q 43:',
            question: 'Description of economic work',
          ),
          const QuestionRow(
            questionNo: 'Q 43 a:',
            question: 'Name - in which field do you work?',
          ),
          MyTextField(
            width: double.infinity,
            icon: Icons.edit,
          ),
          Row(
            children: const [
              Text(
                'Q 43 b:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Text(
                '  Job Code',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "(Supervisor to enter two digit BSIC code)",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                ),
              )
            ],
          ),
          MyTextField(
            width: double.infinity,
            icon: Icons.edit,
          ),
          const QuestionRow(
            questionNo: 'Q 44:',
            question: 'Dignity of work',
          ),
          MyDropDown(items: q_44_item_list,dropDownCallback: (String text) {
            setState(() {

              q_44_value = text;

            });
          },),

          const QuestionRow(
            questionNo: 'Q 45:',
            question: 'Main occupation',
          ),
          Row(
            children: const [
              Text(
                'Q 45 a:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Text(
                'Name - What do you do?',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "(Enter details of his rank or type of work)",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          MyTextField(
            width: double.infinity,
            icon: Icons.edit,
          ),
          Row(
            children: const [
              Text(
                'Q 45 b:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Text(
                'Occupation code?',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  " (Supervisor will write two digit BSOC code)",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                ),
              ),
            ],
          ),

          ///TODO: show hide logic
          MyTextField(
            width: 250,
            icon: Icons.edit,
          ),
          const QuestionRow(
            questionNo: 'Q 46:',
            question:
                'Name - In the last 7 days, were you engaged in any work for income or self-consumption for at least 1 hour?',
          ),
          MyRadioList(
              height: 50,
              radioList: ['Yes', 'No'],
              groupValue: q_46_groupValue,
              onChange: (value) {
                setState(() {
                  q_46_groupValue = value;
                });
              }),

          const QuestionRow(
            questionNo: 'Q 47:',
            question:
                'Name - How many hours did you work for income or personal consumption in the last 7 days?',
          ),
          MyTextField(
            width: 250,
            icon: Icons.edit,
            inputType: TextInputType.number,
          ),
          const QuestionRow(
            questionNo: 'Q 48:',
            question: 'Name - Looking for any work for income?',
          ),
          MyRadioList(
              height: 50,
              radioList: ['Yes', 'No'],
              groupValue: q_48_groupValue,
              onChange: (value) {
                setState(() {
                  q_48_groupValue = value;
                });
              }),
        ],
      ),
    );
  }
}
