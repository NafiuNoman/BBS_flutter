import 'package:bbs_app/widgets/my_radio_list.dart';
import 'package:bbs_app/widgets/my_section_heading.dart';
import 'package:bbs_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/box_plus_minus_btn.dart';
import '../widgets/my_drop_down.dart';
import '../widgets/question_row.dart';

class Module06 extends StatefulWidget {
  const Module06({Key? key}) : super(key: key);

  @override
  State<Module06> createState() => _Module06State();
}

class _Module06State extends State<Module06> {
  String? q_49_value;
  String? q_54_groupValue;

  List<String> q_49_item_list = [
    '1- অবিবাহিত',
    '2- বিবাহিত',
    '3- বিধবা/ বিপত্নীক',
    '4- তালাকপ্রাপ্ত',
    '5- বিচ্ছিন্ন',
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
                'মডিউল ৬: বিবাহ সংক্রান্ত (১০ বছর ও তদূর্ধ্ব বয়সের জন্য)',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            const QuestionRow(
              questionNo: 'Q 49:',
              question: 'বৈবাহিক অবস্থা',
            ),
            MyDropDown(
              items: q_49_item_list,
              dropDownCallback: (String text) {
                setState(() {
                  q_49_value = text;
                });
              },
            ),
            Row(
              children: const [
                Text(
                  'Q 43 b:',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w600),
                ),
                Text(
                  'প্রথম বিবাহের সময় বয়স',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "( পূর্ণ বছরে)",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w100,
                        fontSize: 12),
                  ),
                )
              ],
            ),
            MyTextField(
              width: 120,
              inputType: TextInputType.number,
            ),
            Row(
              children: const [
                Text(
                  'Q 51:',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w600),
                ),
                Text(
                  'কতবার বিবাহ হয়েছে? ',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "(মহিলা হলে Q 55 , একবার বিবাহিত পুরুষ হলে - পরবর্তী সদস্য)",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w100,
                        fontSize: 12),
                  ),
                )
              ],
            ),
            MyTextField(
              width: 120,
              inputType: TextInputType.number,
            ),
            const MySectionHeading(
                heading: 'শুধু একাধিক বিবাহিত পুরুষের জন্য পূরণ করুন'),
            const QuestionRow(
              questionNo: 'Q 52:',
              question: 'নাম - বর্তমানে একই থানায় বসবাস করে স্ত্রীর সংখ্যা',
            ),
            const SizedBox(width: 100, child: BoxPlusMinusBtn()),
            const QuestionRow(
              questionNo: 'Q 53:',
              question: 'নাম - বর্তমানে অন্য থানায় বসবাস করে স্ত্রীর সংখ্যা',
            ),
            const SizedBox(width: 100, child: BoxPlusMinusBtn()),
            const QuestionRow(
              questionNo: 'Q 54:',
              question: 'প্রথম স্ত্রী জীবিত কি? ',
            ),
            MyRadioList(
                height: 50,
                radioList: ['হ্যাঁ', 'না'],
                groupValue: q_54_groupValue,
                onChange: (value) {
                  setState(() {
                    q_54_groupValue = value;
                  });
                }),
          ]),
    );
  }
}
