import 'package:bbs_app/widgets/box_plus_minus_btn.dart';
import 'package:bbs_app/widgets/my_drop_down.dart';
import 'package:bbs_app/widgets/my_radio_list.dart';
import 'package:bbs_app/widgets/my_section_heading.dart';
import 'package:flutter/material.dart';

import '../widgets/male_female_counter_box.dart';
import '../widgets/question_row.dart';

class Module07 extends StatefulWidget {
  const Module07({Key? key}) : super(key: key);

  @override
  State<Module07> createState() => _Module07State();
}

class _Module07State extends State<Module07> {
  String? q_59_groupValue;

  String? q_60_groupValue;
  String? q_61_groupValue;
  String? q_62_value;
  String? q_63_value;

  List<String> q_62_item_list = [
    '1 - ডাক্তার',
    '2 - নার্স/ স্বাস্থ্য কর্মী ',
    '3 - দক্ষ দাই ',
    '4 - অদক্ষ দাই',
    '5 - অন্যান্য',
  ];
  List<String> q_63_item_list = [
    '1 - সরকারি হাসপাতালে/ স্বাস্থ্য সেবা কেন্দ্রে',
    '2 - এন জি ও স্বাস্থ্যকেন্দ্রে ',
    '3 - প্রাইভেট হাসপাতালে/ স্বাস্থ্য সেবা কেন্দ্রে ',
    '4 - বাড়িতে',
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
              'মডিউল ৭: জন্ম সংক্রান্ত (১০ বছর ও তদূর্ধ্ব বয়সের জন্য) ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const QuestionRow(
            questionNo: 'Q 55:',
            question: 'মোট জীবিত জন্মের সংখ্যা',
          ),
          SizedBox(width: 100,child: BoxPlusMinusBtn()),
          const QuestionRow(
            questionNo: 'Q 56:',
            question:
                'জীবিত জন্মগ্রহন কারী সন্তানের সংখ্যা যারা সাধারনতঃ খানায় বসবাস করে',
          ),
          const MaleFemaleCounterBox(
            maleOrBoy: 'ছেলে',
            femaleOrGirl: 'মেয়ে',
          ),
          const QuestionRow(
            questionNo: 'Q 57:',
            question:
                'জীবিত জন্মগ্রহন কারী সন্তানের সংখ্যা যারা সাধারনতঃ অন্যত্র বসবাস করে',
          ),
          const MaleFemaleCounterBox(
            maleOrBoy: 'ছেলে',
            femaleOrGirl: 'মেয়ে',
          ),
          const QuestionRow(
            questionNo: 'Q 58:',
            question:
                'জীবিত জন্মগ্রহন কারী সন্তানের সংখ্যা যারা পরবর্তীতে মারা গেছে',
          ),
          const MaleFemaleCounterBox(
            maleOrBoy: 'ছেলে',
            femaleOrGirl: 'মেয়ে',
          ),
          MySectionHeading(heading: 'শুধু ১০ হতে ৪৯ বছর বয়স্ক মহিলাদের জন্য'),
          const QuestionRow(
            questionNo: 'Q 59:',
            question: 'গত ১২ মাসে জীবিত সন্তান প্রসব করেছেন কি?',
          ),
          MyRadioList(
              height: 50,
              radioList: ['হ্যাঁ', 'না'],
              groupValue: q_59_groupValue,
              onChange: (value) {
                setState(() {
                  q_59_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 60:',
            question: 'জীবিত জন্ম গ্রহণকারী সন্তানের লিঙ্গ',
          ),
          MyRadioList(
              height: 50,
              radioList: ['ছেলে', 'মেয়ে'],
              groupValue: q_60_groupValue,
              onChange: (value) {
                setState(() {
                  q_60_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 61:',
            question: 'সন্তান কি এখনো জীবিত? ',
          ),
          MyRadioList(
              height: 50,
              radioList: ['হ্যাঁ', 'না'],
              groupValue: q_61_groupValue,
              onChange: (value) {
                setState(() {
                  q_61_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 62:',
            question: 'নাম- বাচ্চা প্রসবের সময় কে সহায়তা করেছেন? ',
          ),
          MyDropDown(
            items: q_62_item_list,
            dropDownCallback: (String text) {
              setState(() {
                q_62_value = text;
              });
            },
          ),
          const QuestionRow(
            questionNo: 'Q 63:',
            question: 'কোথায় বাচ্চা প্রসব করেছেন? ',
          ),
          MyDropDown(
            items: q_63_item_list,
            dropDownCallback: (String text) {
              setState(() {
                q_63_value = text;
              });
            },
          ),


        ],
      ),
    );
  }
}
