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
  bool isQ43Visible = false;

  // void dropDownCallBack(String text) {
  //   q_40_value = text;
  //   setState(() {
  //     text == '2. Had work but did not work due to vacation or illness '
  //         ? isVisibility = true
  //         : isVisibility = false;
  //   });
  // }

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
              'মডিউল ৫: অৰ্থনৈতিক  কর্মকাণ্ড (১০ বছর ও তদূর্ধ্ব বয়সের সদস্যদের জন্য)',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const QuestionRow(
            questionNo: 'Q 40:',
            question:
                'নাম - গত ৭ দিন কোন আয়মূলক কাজে ন্যূনতম ১ ঘণ্টা নিয়োজিত ছিলেন কি? ',
          ),
          MyDropDown(
            items: q_40_item_list,
            dropDownCallback: (String text) {
              setState(() {
                q_40_value = text;
                setState(() {
                  text == '2. Had work but did not work due to vacation or illness '
                      ? isQ43Visible = true
                      : isQ43Visible = false;
                });


              });
            },
          ),

          const QuestionRow(
            questionNo: 'Q 41:',
            question: 'নাম - গত ৭ দিনে মোট কত ঘণ্টা কাজ করেছেন? ',
          ),
          MyTextField(
            width: 250,
            icon: Icons.edit,
            inputType: TextInputType.number,
          ),
          const QuestionRow(
            questionNo: 'Q 42:',
            question:
                'নাম - গত ৭ দিন কাজ না করার প্রধান কারন কি?',
          ),
          MyDropDown(
            items: q_42_item_list,
            dropDownCallback: (String text) {
              setState(() {
                q_42_value = text;
              });
            },
          ),

          const QuestionRow(
            questionNo: 'Q 43:',
            question: 'অর্থনৈতিক কাজের বিবরণ',
          ),
          const QuestionRow(
            questionNo: 'Q 43 a:',
            question: 'নাম - কোন ক্ষেত্রে কাজ করেন?',
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
                '  কাজের কোড',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "(সুপারভাইজার দুই অংকে BSIC কোড লিখবেন)",
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
            question: 'কাজের মর্যাদা ',
          ),
          MyDropDown(
            items: q_44_item_list,
            dropDownCallback: (String text) {
              setState(() {
                q_44_value = text;
              });
            },
          ),

          const QuestionRow(
            questionNo: 'Q 45:',
            question: ' প্রধান পেশা ',
          ),
          Row(
            children: const [
              Text(
                'Q 45 a:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Text(
                'নাম - কি কাজ করেন? ',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "(তার পদমর্যাদা অথবা কাজের প্রকারের বিবরণ লিখুন)",
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
                'পেশা কোড ',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  " (সুপারভাইজার দুই অংকে BSOC কোড লিখবেন)  ",
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
                'নাম - গত ৭ দিনে থানার আয়মূলক অথবা নিজস্ব ভোগের জন্য ন্যূনতম ১ ঘণ্টা কোন কাজে নিয়োজিত ছিলেন কি?',
          ),
          MyRadioList(
              height: 50,
              radioList: ['হ্যাঁ', 'না'],
              groupValue: q_46_groupValue,
              onChange: (value) {
                setState(() {
                  q_46_groupValue = value;
                });
              }),

          const QuestionRow(
            questionNo: 'Q 47:',
            question:
                'নাম - গত ৭ দিনে খানার আয়মূলক অথবা নিজস্ব ভোগের জন্য কত ঘণ্টা কাজ করেছেন?',
          ),
          MyTextField(
            width: 250,
            icon: Icons.edit,
            inputType: TextInputType.number,
          ),
          const QuestionRow(
            questionNo: 'Q 48:',
            question: 'নাম - আয়ের জন্য কোন কাজ খুঁজছেন কি?',
          ),
          MyRadioList(
              height: 50,
              radioList: ['হ্যাঁ', 'না'],
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
