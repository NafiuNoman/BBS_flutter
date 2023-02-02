import 'package:bbs_app/widgets/my_disable_container.dart';
import 'package:bbs_app/widgets/my_section_heading.dart';
import 'package:flutter/material.dart';

import '../widgets/male_female_counter_box.dart';
import '../widgets/my_check_box.dart';
import '../widgets/my_radio_list.dart';
import '../widgets/my_text_field.dart';
import '../widgets/question_row.dart';

class Module03 extends StatefulWidget {
  const Module03({Key? key}) : super(key: key);

  @override
  State<Module03> createState() => _Module03State();
}

class _Module03State extends State<Module03> {
  String? q_10_groupValue;
  String? q_12b_groupValue;
  String? q_18a_groupValue;
  String? q_19a_groupValue;

  List q_10_TitleListItem = ['হ্যাঁ', 'না'];
  List q_12a_CheckList = [
    {'title': 'ট্যাপ', 'isActive': false},
    {'title': 'নলকূপ / গভীর নলকূপ', 'isActive': false},
    {'title': 'কুয়া', 'isActive': false},
    {'title': 'পুকুর', 'isActive': false},
    {'title': 'নদী/ডোবা/খাল', 'isActive': false},
    {'title': 'অন্যান্য', 'isActive': false}
  ];
  List q_12c_CheckList = [
    {'title': 'বাসস্থানের অভ্যন্তরে', 'isActive': false},
    {'title': '২০০ মিটারের মধ্যে', 'isActive': false},
    {'title': '২০০ মিটারের অধিক দূরে', 'isActive': false},
  ];
  List q_13_CheckList = [
    {'title': 'সেনেটারি (ওয়াটার সীলসহ)', 'isActive': false},
    {'title': 'সেনেটারি (ওয়াটার সীলবিহীন)', 'isActive': false},
    {'title': 'নন- সেনেটারী/ কাঁচা', 'isActive': false},
    {'title': 'খোলা জায়গা', 'isActive': false},
  ];
  List q_14_CheckList = [
    {'title': 'নিয়ন্ত্রিত ময়লা ফেলার স্থান', 'isActive': false},
    {'title': 'অনিয়ন্ত্রিত ময়লা ফেলার স্থান', 'isActive': false},
    {'title': 'মাটি চাপা/ গর্তে ফেলা', 'isActive': false},
    {'title': 'পুড়ানো', 'isActive': false},
  ];
  List q_15_CheckList = [
    {'title': 'বিদ্যুৎ', 'isActive': false},
    {'title': 'সৌর বিদ্যুৎ', 'isActive': false},
    {'title': 'কেরোসিন', 'isActive': false},
    {'title': 'বায়োগ্যাস', 'isActive': false},
    {'title': 'অন্যান্য', 'isActive': false},
  ];
  List q_16_CheckList = [
    {'title': 'কাঠ', 'isActive': false},
    {'title': 'কেরোসিন', 'isActive': false},
    {'title': 'গাস/এলপিজি', 'isActive': false},
    {'title': 'বিদ্যুৎ', 'isActive': false},
    {'title': 'খর/পাতা/শুকনো গোবর', 'isActive': false},
    {'title': 'খোলা জায়গা', 'isActive': false},
  ];
  List q_12b_TitleListItem = ['হ্যাঁ', 'না'];
  List q_18a_TitleListItem = ['হ্যাঁ', 'না'];
  List q_19a_TitleListItem = ['হ্যাঁ', 'না'];
  List q_12_a_TitleListItem = [
    'Tap',
    'Tubewell/ Deep tubewell',
    'Well',
    'Pond',
    'River/Pond/Canal',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text(
          'মডিউল ৩: খানা সংক্রান্ত',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        const QuestionRow(
          questionNo: 'Q 10:',
          question: 'ইহা কি ক্ষুদ্র নৃগোষ্ঠী খানা?',
        ),
        MyRadioList(
            height: 40,
            radioList: q_10_TitleListItem,
            groupValue: q_10_groupValue,
            onChange: (value) {
              setState(() {
                q_10_groupValue = value;
              });
            }),
        const QuestionRow(questionNo: 'Q 11:', question: 'গৃহের মালিকানা?'),
        MyTextField(
          icon: Icons.edit,
        ),
        const QuestionRow(questionNo: 'Q 12:', question: 'খাবার পানি'),
        const QuestionRow(
            questionNo: 'Q 12 a: ', question: 'খাবার পানির প্রধান উৎস'),
        MyCheckBox(
          height: 90,
          checkList: q_12a_CheckList,
        ),
        const QuestionRow(
            questionNo: 'Q 12 b:',
            question: 'এ খানায় বোতল/ ফিল্টার/ সিদ্ধ পানি পান করে কি?'),
        MyRadioList(
            height: 40,
            radioList: q_12b_TitleListItem,
            groupValue: q_12b_groupValue,
            onChange: (value) {
              setState(() {
                q_12b_groupValue = value;
              });
            }),
        const QuestionRow(
            questionNo: 'Q 12 c:', question: 'পানির উৎসের দূরত্ব'),
        MyCheckBox(
          height: 45,
          checkList: q_12c_CheckList,
        ),
        const QuestionRow(questionNo: 'Q 13: ', question: 'পায়খানার প্রকার'),
        MyCheckBox(
          height: 90,
          checkList: q_13_CheckList,
        ),
        const QuestionRow(
            questionNo: 'Q 14: ', question: 'কঠিন বজ্র পরিষ্কার ব্যবস্থাপনা'),
        MyCheckBox(
          height: 90,
          checkList: q_14_CheckList,
        ),
        const QuestionRow(questionNo: 'Q 15: ', question: 'আলোর উৎস'),
        MyCheckBox(
          height: 90,
          checkList: q_15_CheckList,
        ),
        const QuestionRow(questionNo: 'Q 16: ', question: 'রান্নার জ্বালানী'),
        MyCheckBox(
          height: 90,
          checkList: q_16_CheckList,
        ),
        const QuestionRow(
            questionNo: 'Q 17: ',
            question:
                'খানার কতজন পুরুষ ও মহিলা সদস্য পত্রিকা পড়ে, রেডিও শুনে, টেলিভিশান দেখে অথবা ইন্টারনেট  ব্যবহার করে?'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('a. পত্রিকা পড়ে '),
            Spacer(),
            MaleFemaleCounterBox(),
            SizedBox(
              width: 35,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('b. রেডিও শুনে'),
            Spacer(),
            MaleFemaleCounterBox(),
            SizedBox(
              width: 35,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('c.টেলিভিশন দেখে'),
            Spacer(),
            MaleFemaleCounterBox(),
            SizedBox(
              width: 35,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('d. ইন্টারনেট ব্যবহার করে'),
            Spacer(),
            MaleFemaleCounterBox(),
            SizedBox(
              width: 35,
            )
          ],
        ),
        const MySectionHeading(
            heading: 'এ খানায় কোন  সদস্যার নিজস্ব বাড়ি/জমি আছে কি ? (18-20)'),
        const QuestionRow(questionNo: 'Q 18 a: ', question: 'বাড়ি?'),
        MyRadioList(
            height: 40,
            radioList: q_18a_TitleListItem,
            groupValue: q_18a_groupValue,
            onChange: (value) {
              setState(() {
                q_18a_groupValue = value;
              });
            }),
        MyDisableContainer(
          isIgnore: q_18a_groupValue == 'হ্যাঁ' ? false : true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              QuestionRow(
                  questionNo: 'Q 18 b: ',
                  question: 'উত্তর হ্যাঁ হলে কয়জনের নিজস্ব বাড়ি আছে?'),
              MaleFemaleCounterBox(),
            ],
          ),
        ),
        MyDisableContainer(
            isIgnore: q_18a_groupValue == 'না' ? false : true,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const QuestionRow(questionNo: 'Q 19 a: ', question: 'জমি?'),
                MyRadioList(
                    height: 40,
                    radioList: q_19a_TitleListItem,
                    groupValue: q_19a_groupValue,
                    onChange: (value) {
                      setState(() {
                        q_19a_groupValue = value;
                      });
                    }),
              ],
            )),
        MyDisableContainer(
          isIgnore:q_19a_groupValue== 'হ্যাঁ' ? false : true ,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              QuestionRow(
                  questionNo: 'Q 19 b: ',
                  question: 'উত্তর হ্যাঁ হলে কয়জনের নিজস্ব জমি আছে?'),
              MaleFemaleCounterBox(),
            ],
          ),
        ),

        const QuestionRow(
            questionNo: 'Q 20: ',
            question:
                'এ খানায় নিজস্ব আছে কি? (প্রতিটি আইটেমের জন্য প্রশ্ন করুন। উত্তর হ্যাঁ হলে “হ্যাঁ” চেকবক্সে এবং না হলে “না” চেকবক্সে ক্রস দিন)'),
        Row(
          children: [
            const Text('1. নৌকা'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('2. গরু/মহিষের গাড়ি'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('3. ঠেলাগাড়ি/ রিক্সা ভ্যান'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('4. রিক্সা'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('5. বাই-সাইকেল'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('6. মোটর সাইকেল'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('7. মোটরগাড়ি / বাস/ ট্রাক'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('8. স্কুটার/ সিএনজি/ অটোরিকশা'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('9. টেলিফোন'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('10. মোবাইল'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('11. সেলাই মেশিন'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('12. টেলিভিশান/ রেডিও / ট্রান জিস্টার'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('13. ডিস এন্টেনা'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('14. কম্পিউটার'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        Row(
          children: [
            const Text('15.ফ্রিজ/ ডিপ ফ্রিজ'),
            const Spacer(),
            MyRadioList(
                nextBtnGap: 25,
                height: 30,
                radioList: const ['হ্যাঁ', 'না'],
                groupValue: 'না',
                onChange: (value) {}),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
