import 'package:bbs_app/widgets/my_check_box.dart';
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
    'আলাদা',
    'এপার্টমেন্ট',
    'সংযুক্ত/ব্যারাক হাউজ',
  ];
  List q_05_CheckList = [

    {'title': 'খড়/ বাঁশ/ পলিথিন/ প্লাস্টিক/ ক্যানভাস', 'isActive': false},
    {'title': 'মাটি/কাঁচা ইট', 'isActive': false},
    {'title': 'টিন (সিআইসিট)', 'isActive': false},
    {'title': 'কাঠ', 'isActive': false},
    {'title': 'ইট-সিমেন্ট', 'isActive': false},
    {'title': 'অন্যান্য', 'isActive': false},

  ];
  List q_06_CheckList = [

    {'title': 'খড়/ বাঁশ/ পলিথিন/ প্লাস্টিক/ ক্যানভাস', 'isActive': false},

    {'title': 'টিন (সিআইসিট)', 'isActive': false},
    {'title': 'টালি', 'isActive': false},
    {'title': 'ইট-সিমেন্ট', 'isActive': false},
    {'title': 'অন্যান্য', 'isActive': false},


  ];
  List q_07_CheckList = [
    {'title': 'মাটি', 'isActive': false},
    {'title': 'কাঠ/বাঁশ', 'isActive': false},
    {'title': 'ইট-সিমেন্ট', 'isActive': false},
    {'title': 'মোজাইক/ টাইলস', 'isActive': false},
    {'title': 'অন্যান্য', 'isActive': false},
  ];
  List q_09_TitleListItem = ['হ্যাঁ', 'না'];
  List q_10_TitleListItem = ['হ্যাঁ', 'না'];

  @override
  Widget build(BuildContext context) {

    print('moudle 2');
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'মডিউল ২: গৃহ সংক্রান্ত',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const QuestionRow(
            questionNo: 'Q 4:',
            question: 'গৃহের প্রকার',
          ),
          MyRadioList(height: 50, radioList: q_04_TitleListItem, groupValue: q_04_groupValue, onChange: (value) {
              setState(() {
                q_04_groupValue = value;
              });
            }),
          const QuestionRow(
              questionNo: 'Q 5:', question: 'প্রধান গৃহের দেয়ালের উপকরণ'),
          MyCheckBox(height: 90, checkList: q_05_CheckList),

          const QuestionRow(
              questionNo: 'Q 6:', question: 'প্রধান গৃহের ছাদের উপকরণ'),
          MyCheckBox(height: 90, checkList: q_06_CheckList),
          const QuestionRow(
              questionNo: 'Q 7:', question: ' প্রধান গৃহের মেঝের উপকরণ '),
          MyCheckBox(height: 90, checkList: q_07_CheckList),
          const QuestionRow(questionNo: 'Q 8:', question:'বাসস্থান'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text('a.',style: TextStyle(color:textColor,fontWeight: FontWeight.w600 ),),
                  Text(' মোট কক্ষ সংখ্যা'),
                  SizedBox(width: 100,child: BoxPlusMinusBtn()),
                ],
              ),
              Row(
                children: const [
                  Text('b.',style: TextStyle(color:textColor,fontWeight: FontWeight.w600 )),
                  Text(' শোবার কক্ষ সংখ্যা'),
                  SizedBox(width: 100,child: BoxPlusMinusBtn()),
                ],
              ),
            ],
          ),
          const QuestionRow(questionNo: 'Q 9:', question: 'ইহা কি বস্তিখানা? '),
          MyRadioList(height: 40, radioList: q_09_TitleListItem, groupValue: q_09_groupValue, onChange: (value) {
              setState(() {
                q_09_groupValue = value;
              });
            }),
          const QuestionRow(questionNo: 'Q :', question: ' বাতিল ফরম '),
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

