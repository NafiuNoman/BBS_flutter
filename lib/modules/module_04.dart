import 'package:bbs_app/widgets/my_radio_list.dart';
import 'package:flutter/material.dart';

import '../widgets/my_drop_down.dart';
import '../widgets/my_text_field.dart';
import '../widgets/question_row.dart';

class Module04 extends StatefulWidget {
  const Module04({Key? key}) : super(key: key);

  @override
  State<Module04> createState() => _Module04State();
}

class _Module04State extends State<Module04> {
  bool isVisibility = false;
  String q_32a_value = '';
  String q_24a_value = '';

  void dropDownCallBack(String text) {
    q_32a_value = text;
    setState(() {
      text == '1. Same District' ? isVisibility = true : isVisibility = false;
    });
  }

  String q22HelperText =
      """(এ খানায় সাধারনতঃ বসবাস করে এমন সকল সদস্যের নাম লিখুন। সদস্যের ডাক নাম ইংরেজি বড় অক্ষরে লিখুন।
ক্রমানুসারে প্রথমে খানা প্রধান, তারপর স্ত্রী/ স্বামী, ছোট সন্তান হতে শুরু করে বড় সন্তান, অন্যান্য আত্মীয় এবং অনাত্মীয়ের নাম লিখুন।)
""";
  String? q_25_groupValue;
  String? q_26_groupValue;
  String? q_27_groupValue;
  String? q_29_groupValue;
  String? q_28_groupValue;
  String? q_30_groupValue;
  String? q_31_groupValue;
  List<String> q_24_item_list = [
    '1. Head of the house',
    '2. Wife/Husband',
    '3. Child',
    '4. Father-Mother / Father-in-law-Mother-in-law',
    '5. Daughter-in-law/Son-in-law',
    '6. Brother-Sister/ Brother-in-law / Sister-in-law',
    '7. Grandchildren',
    '8. Other relatives',
    '9. Inanimate'
  ];
  List<String> q_32_item_list = [
    '1. Same District',
    '2. Different District ',
    '3. Different Country',
  ];

  @override
  Widget build(BuildContext context) {
    print('form build..$q_24a_value');
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'মডিউল ৪: ব্যক্তি সংক্রান্ত',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Wrap(
            children: [
              const Text(
                'Q 22:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              const Text(
                ' খানার সদস্যের নাম',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  q22HelperText,
                  style: const TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
          MyTextField(
            icon: Icons.edit,
          ),

          Row(
            children: const [
              Text(
                'Q 23:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Text(
                '  বয়স',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "(পূর্ণ বছরে)(এক বছরের কম হলে '০০' লিখুন)",
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
            icon: Icons.edit,
          ),

          const QuestionRow(
            questionNo: 'Q 24:',
            question: ' খানা প্রধানের সাথে সম্পর্ক ',
          ),

          MyDropDown(
            items: q_24_item_list,
            dropDownCallback: (String text) {
              setState(() {

                q_24a_value = text;

              });
            },
          ),

          const QuestionRow(
            questionNo: 'Q 25:',
            question: 'লিঙ্গ',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['পুরুষ', 'মহিলা'],
              groupValue: q_25_groupValue,
              onChange: (value) {
                setState(() {
                  q_25_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 26:',
            question: 'মায়ের লাইন নম্বর ',
          ),
          MyRadioList(
              height: 30,
              radioList: ['হ্যাঁ', 'না'],
              groupValue: q_26_groupValue,
              onChange: (value) {
                setState(() {
                  q_26_groupValue = value;
                });
              }),

          const QuestionRow(
            questionNo: 'Q 27:',
            question: 'মা কি জীবিত?',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['হ্যাঁ', 'না', 'জানি না'],
              groupValue: q_27_groupValue,
              onChange: (value) {
                setState(() {
                  q_27_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 28:',
            question: 'বাবা কি জীবিত?',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['হ্যাঁ', 'না', 'জানি না'],
              groupValue: q_28_groupValue,
              onChange: (value) {
                setState(() {
                  q_28_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 29:',
            question: 'ধর্ম',
          ),
          MyRadioList(
              height: 50,
              radioList: const [
                'মুসলমান',
                'হিন্দু',
                'বৌদ্ধ',
                'খৃস্টান',
                'অন্যান্য'
              ],
              groupValue: q_29_groupValue,
              onChange: (value) {
                setState(() {
                  q_29_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 30:',
            question: 'মাতৃভাষা',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['বাংলা', 'অন্যান্য'],
              groupValue: q_30_groupValue,
              onChange: (value) {
                setState(() {
                  q_30_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 31:',
            question: 'দ্বিতীয় ভাষা',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['বাংলা', 'ইংরেজি', 'অন্যান্য', 'নাই'],
              groupValue: q_31_groupValue,
              onChange: (value) {
                setState(() {
                  q_31_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 32 a:',
            question: 'জন্মস্থান কোথায়?',
          ),
          MyDropDown(
            items: q_32_item_list,
            dropDownCallback: (String text) {
              q_32a_value = text;
              setState(() {
                text == '1. Same District'
                    ? isVisibility = true
                    : isVisibility = false;
              });
            },
          ),
          Visibility(
            visible: isVisibility,
            child: const QuestionRow(
              questionNo: 'Q 33 a:',
              question: 'এ জেলায় কত বছর বসবাস করেন',
            ),
          ),
          Visibility(
            visible: isVisibility,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 5, right: 8, bottom: 8),
              child: SizedBox(
                width: 120,
                child: MyTextField(inputType: TextInputType.number,icon: Icons.edit,),
              ),
            ),
          ),

          ///TODO:  34-39
        ],
      ),
    );
  }
}



// 'Muslim',
// 'Hindu',
// 'Buddha',
// 'Christian',
// 'Others'

// 'Bengali', 'English', 'Others', 'None'
// "(In a full year) (Enter 00 if less than one year)"

// (এ খানায় সাধারনতঃ বসবাস করে এমন সকল সদস্যের নাম লিখুন। সদস্যের ডাক নাম ইংরেজি বড় অক্ষরে লিখুন।
// ক্রমানুসারে প্রথমে খানা প্রধান, তারপর স্ত্রী/ স্বামী, ছোট সন্তান হতে শরু করে বড় সন্তান, অন্যান্য আত্মীয় এবং আত্মীয়ের নাম লিখুন।)
// ( Enter the names of all the members who usually live in this house. Write the member's nickname in English capital letters. Write the names of the head of household first, then wife/husband, younger children to older children, other
// relatives and non-relatives in order.)

