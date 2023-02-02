import 'package:flutter/material.dart';
import '../widgets/male_female_counter_box.dart';

import '../widgets/my_radio_list.dart';
import '../widgets/my_section_heading.dart';
import '../widgets/my_text_field.dart';
import '../widgets/question_row.dart';
import '../widgets/question_row_with_note.dart';

class Module10 extends StatefulWidget {
  const Module10({Key? key}) : super(key: key);

  @override
  State<Module10> createState() => _Module10State();
}

class _Module10State extends State<Module10> {
  String? q_74_groupValue;
  String? q_78_groupValue;
  String? q_79_groupValue;
  String? q_80_groupValue;
  String? q_81a_groupValue;
  String? q_81b_groupValue;

  List<String> q_74_item_list = ['হ্যাঁ', 'না'];
  List<String> q_78_item_list = ['বাড়িতে','হাসপাতালে','অন্যত্র'];
  List<String> q_79_item_list = ['হ্যাঁ', 'না'];
  List<String> q_80_item_list = ['হ্যাঁ', 'না'];
  List<String> q_81a_item_list = ['হ্যাঁ', 'না'];
  List<String> q_81b_item_list = ['হ্যাঁ', 'না'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'মডিউল ১০: মৃত্যু সংক্রান্ত ( গত ১২ মাসে ) ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const MySectionHeading(
            heading: '( সকল বয়সের সদস্যদের জন্য )',
          ),
          const QuestionRow(
              questionNo: "Q 74:",
              question: 'গত ১২ মাসে এ খানার কোন সদস্য মৃত্যু বরন করেছেন কি?'),
          MyRadioList(
              height: 50,
              radioList: q_74_item_list,
              groupValue: q_74_groupValue,
              onChange: (value) {
                setState(() {
                  q_74_groupValue = value;
                });
              }),
          const QuestionRow(questionNo: "Q 75:", question: 'মৃতের নাম'),
          const MyTextField(
            icon: Icons.edit,
            width: double.infinity,
          ),
          const QuestionRow(questionNo: "Q 76:", question: 'লিঙ্গ'),
          const MaleFemaleCounterBox(
            maleOrBoy: 'ছেলে',
            femaleOrGirl: 'মেয়ে',
          ),
          const QuestionRowWithNote(
              questionNo: 'Q 77:',
              question: '  মৃত্যু কালে বয়স কত ছিল?  ',
              note: '( পূর্ণ বছরে )'),
          const MyTextField(
            icon: Icons.edit,
            width: 250,
            inputType: TextInputType.number,
          ),
          const QuestionRow(questionNo: "Q 78:", question: 'কোথায় মারা গেছেন?'),
          MyRadioList(
              height: 50,
              radioList: q_78_item_list,
              groupValue: q_78_groupValue,
              onChange: (value) {
                setState(() {
                  q_78_groupValue = value;
                });
              }),

          const MySectionHeading(
            heading:
                '(১০ থেকে ৪৯ বছর বয়স্ক মহিলা সদস্যদের জন্য যারা গত ১ বছরের মধ্যে মারা গেছেন )',
          ),
          const QuestionRow(
              questionNo: "Q 79:",
              question: 'নাম - মৃত্যুর সময় গর্ভবতী ছিলেন কি?'),
          MyRadioList(
              height: 50,
              radioList: q_79_item_list,
              groupValue: q_79_groupValue,
              onChange: (value) {
                setState(() {
                  q_79_groupValue = value;
                });
              }),
          const QuestionRow(
              questionNo: "Q 80:",
              question:
                  'নাম - গর্ভপাতের সময় অথবা গর্ভপাতের ৪২ দিনের মধ্যে মারা গেছেন কি?'),
          MyRadioList(
              height: 50,
              radioList: q_80_item_list,
              groupValue: q_80_groupValue,
              onChange: (value) {
                setState(() {
                  q_80_groupValue = value;
                });
              }),
          const QuestionRow(
              questionNo: "Q 81 a:",
              question: 'নাম - বাচ্চা প্রসবের সময় মারা গেছেন কি?'),
          MyRadioList(
              height: 50,
              radioList: q_81a_item_list,
              groupValue: q_81a_groupValue,
              onChange: (value) {
                setState(() {
                  q_81a_groupValue = value;
                });
              }),
          const QuestionRow(
              questionNo: "Q 81 b:",
              question: 'প্রসবের ৪২ দিনের মধ্যে মারা গেছেন কি?'),
          MyRadioList(
              height: 50,
              radioList: q_81b_item_list,
              groupValue: q_81b_groupValue,
              onChange: (value) {
                setState(() {
                  q_81b_groupValue = value;
                });
              }),
        ],
      ),
    );
  }
}
