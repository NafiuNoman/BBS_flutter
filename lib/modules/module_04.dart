import 'package:bbs_app/widgets/my_disable_container.dart';
import 'package:bbs_app/widgets/my_radio_list.dart';
import 'package:bbs_app/widgets/question_row_with_note.dart';
import 'package:flutter/material.dart';

import '../styles/common_colors.dart';
import '../widgets/my_drop_down.dart';
import '../widgets/my_section_heading.dart';
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
  String q_32c_value = '';
  String q_33b_value = '';
  String q_34a_value = '';
  String q_34c_value = '';
  String q_35_value = '';
  String q_36_value = '';

  String q_37_value = '';

  String q_39_value = '';

  void dropDownCallBack(String text) {
    q_32a_value = text;
    setState(() {
      text == '1- একই জেলা' ? isVisibility = true : isVisibility = false;
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
  List<String> q_32a_item_list = [
    '1- একই জেলা',
    '2- অন্য জেলা',
    '3- অন্য দেশ',
  ];
  List<String> q_34a_item_list = [
    '1- একই জেলা',
    '2- অন্য জেলা',
    '3- অন্য দেশ',
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
              radioList: const ['হ্যাঁ', 'না'],
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
          MyDisableContainer(
              isIgnore: q_26_groupValue=='হ্যাঁ'?false:true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

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


                ],
              )),

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
            items: q_32a_item_list,
            dropDownCallback: (String text) {
              setState(() {
                q_32a_value = text;
              });
            },
          ),
          const QuestionRow(
            questionNo: 'Q 32 b:',
            question: 'অন্য জেলা/ দেশের কোড? ',
          ),
          MyTextField(
            width: 120,
            icon: Icons.edit,
          ),
          const QuestionRow(
            questionNo: 'Q 32 c:',
            question: 'জন্মস্থানের এলাকা?  ',
          ),
          MyDropDown(
            items: const [
              '১- পল্লী এলাকা',
              '২ - মেট্রোপলিটন এলাকা ',
              '৩ - অন্যান্য শহর এলাকা'
            ],
            dropDownCallback: (String text) {
              setState(() {
                q_32c_value = text;
              });
            },
          ),
          MyDisableContainer(
              isIgnore: q_32a_value == '1- একই জেলা' ? false : true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  QuestionRowWithNote(
                      questionNo: 'Q 33 a:',
                      question: 'এ জেলায় কত বছর বসবাস করেন',
                      note: "(পূর্ণ বছরে)"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, top: 5, right: 8, bottom: 8),
                    child: SizedBox(
                      width: 120,
                      child: MyTextField(
                        inputType: TextInputType.number,
                        icon: Icons.edit,
                      ),
                    ),
                  ),
                ],
              )),
          const QuestionRow(
            questionNo: 'Q 33 b:',
            question: ' এ জেলায় আসার প্রধান কারণ ',
          ),
          MyDropDown(
              items: const [
                '১-বিবাহ',
                '২-শিক্ষা',
                '৩-চাকুরী/ব্যবসা',
                '৪-কাজের খোজে',
                '৫-প্রাকৃতিক দুর্যোগ',
                '৬-পারিবারিক কলহ',
                '৭-অত্যাচারিত/ স্বামী বা স্ত্রী কর্তৃক পরিত্যক্ত',
                '৮-অন্যান্য'
              ],
              dropDownCallback: (String text) {
                setState(() {
                  q_33b_value = text;
                });
              }),
          const QuestionRow(
            questionNo: '34.',
            question: ' পাঁচ বছর পূর্বের অবস্থান',
          ),
          const QuestionRow(
            questionNo: 'Q 34 a:',
            question: ' পাঁচ বছর পূর্বে কোথায় বসবাস করতেন?',
          ),
          MyDropDown(
            items: q_34a_item_list,
            dropDownCallback: (String text) {
              setState(() {
                q_34a_value = text;
              });
            },
          ),
          const QuestionRow(
            questionNo: 'Q 34 b:',
            question: 'অন্য জেলা/ অন্য দেশ',
          ),
          MyTextField(
            icon: Icons.edit,
            width: 120,
          ),
          const QuestionRow(
            questionNo: 'Q 34 c:',
            question: 'বাসস্থানের এলাকা?',
          ),
          MyDropDown(
            items: const [
              '১- পল্লী এলাকা',
              '২ - মেট্রোপলিটন এলাকা ',
              '৩ - অন্যান্য শহর এলাকা'
            ],
            dropDownCallback: (String text) {
              setState(() {
                q_34c_value = text;
              });
            },
          ),
          const MySectionHeading(
            heading: '৩ বছর ও তদূর্ধ্ব বয়সের সদস্যদের জন্য ( 35 - 36)',
          ),
          const QuestionRow(
            questionNo: 'Q 35:',
            question: 'বর্তমানে লেখাপড়া করছেন কি?',
          ),
          MyDropDown(
            items: const [
              '০- করছেন না',
              '১- প্রাক-প্রাথমিক',
              '২- প্রাথমিক',
              '৩- নিম্ন মাধ্যমিক',
              '৪- মাধ্যমিক/ উচ্চ মাধ্যমিক',
              '৫- স্নাতক',
              '৬- স্নাতকুত্তর'
            ],
            dropDownCallback: (String text) {
              setState(() {
                q_35_value = text;
              });
            },
          ),
          const QuestionRow(
            questionNo: 'Q 36:',
            question: 'কোন প্রকারের শিক্ষা প্রতিষ্ঠানে লেখাপড়া করছেন?',
          ),
          MyDropDown(
            items: const [
              '১- সরকারি',
              '২ - বেসরকারি / এমপিওভুক্ত ',
              '৩ - ধর্মীয়',
              '৪ - উপানুস্ঠানিক',
              '৫ - অন্যান্য'
            ],
            dropDownCallback: (String text) {
              setState(() {
                q_36_value = text;
              });
            },
          ),
          const MySectionHeading(
            heading: '৭ বছর ও তদূর্ধ্ব বয়সের সদস্যদের জন্য (37 - 39)',
          ),
          MyDisableContainer(
              isIgnore: q_35_value != '০- করছেন না' ? true : false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const QuestionRow(
                    questionNo: 'Q 37:',
                    question: 'চিঠি পড়তে ও লিখতে পারেন কিনা?',
                  ),
                  MyDropDown(
                    items: const [
                      '১- পড়তে ও লিখতে পারে না',
                      '২ - শুধু পড়তে পারে ',
                      '৩ - পড়তে ও লিখতে পারে'
                    ],
                    dropDownCallback: (String text) {
                      setState(() {
                        q_37_value = text;
                      });
                    },
                  ),
                ],
              )),
          const QuestionRow(
            questionNo: 'Q 38:',
            question: 'সর্বোচ্চ শ্রেণি পাস',
          ),
          MyTextField(
            width: 120,
            icon: Icons.edit,
          ),
          const QuestionRow(
            questionNo: 'Q 39:',
            question: 'শিক্ষার ক্ষেত্র',
          ),
          MyDropDown(
            items: const [
              '১- সাধারণ',
              '২ - টেকনিক্যাল / ভোকেশনাল ',
              '৩ - ধর্মীয়'
            ],
            dropDownCallback: (String text) {
              setState(() {
                q_39_value = text;
              });
            },
          )
        ],
      ),
    );
  }
}


///TODO: 32/33/34/37/40 need to solve

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
