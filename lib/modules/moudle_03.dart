import 'package:flutter/material.dart';

import '../widgets/question_row.dart';

class Module03 extends StatefulWidget {
  const Module03({Key? key}) : super(key: key);

  @override
  State<Module03> createState() => _Module03State();
}

class _Module03State extends State<Module03> {
  String? q_10_groupValue;

  List q_10_TitleListItem = ['Yes', 'No'];
  List q_12_a_TitleListItem = ['Tap', 'Tubewell/ Deep tubewell','Well','Pond','River/Pond/Canal','Others'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Module 3: Food Information ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),

                QuestionRow(
                  questionNo: 'Q 10:',
                  question: 'Is this small ethnic?',
                ),
                buildRadioList(
                  height: 50,
                  radioList: q_10_TitleListItem,
                  groupValue: q_10_groupValue,
                  onChange: (value) {
                    setState(() {
                      q_10_groupValue = value;
                    });
                  },
                ),

          QuestionRow(
              questionNo: 'Q 11:', question: 'The owner of the household.'),
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

          QuestionRow(
              questionNo: 'Q 12:', question: 'Drinkable Water'),

          QuestionRow(
              questionNo: 'Q 12 a: ', question: 'Drinkable Water main resource'),
          buildRadioList(
            height: 90,
            radioList: q_12_a_TitleListItem,
            groupValue: q_10_groupValue,
            onChange: (value) {
              setState(() {
                q_10_groupValue = value;
              });
            },
          ),

          QuestionRow(questionNo: 'Q 12:', question: 'Does this house drink bottled/filtered/boiled water?'),
          buildRadioList(
            height: 40,
            radioList: q_10_TitleListItem,
            groupValue: q_10_groupValue,
            onChange: (value) {
              setState(() {
                q_10_groupValue = value;
              });
            },
          ),

          QuestionRow(questionNo: 'Q 12 a: ', question: 'Drinkable Water main resource'),
          buildRadioList(
            height: 90,
            radioList: q_12_a_TitleListItem,
            groupValue: q_10_groupValue,
            onChange: (value) {
              setState(() {
                q_10_groupValue = value;
              });
            },
          ),
    QuestionRow(questionNo: 'Q 12 a: ', question: 'Drinkable Water main resource'),
          buildRadioList(
            height: 90,
            radioList: q_12_a_TitleListItem,
            groupValue: q_10_groupValue,
            onChange: (value) {
              setState(() {
                q_10_groupValue = value;
              });
            },
          ),
    QuestionRow(questionNo: 'Q 12 a: ', question: 'Drinkable Water main resource'),
          buildRadioList(
            height: 90,
            radioList: q_12_a_TitleListItem,
            groupValue: q_10_groupValue,
            onChange: (value) {
              setState(() {
                q_10_groupValue = value;
              });
            },
          ),


        ],
      ),
    );
  }
  SizedBox buildRadioList(
      {required double height,
        required List<dynamic> radioList,
        required String? groupValue,
        Function? onChange}) {
    return SizedBox(
      height: height,
      child: Align(
        alignment: Alignment.topLeft,
        child: Wrap(
          children: List.generate(
            radioList.length,
                (i) => Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  value: radioList[i],
                  groupValue: groupValue,
                  onChanged: null,
                ),
                Text(
                  radioList[i],
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
