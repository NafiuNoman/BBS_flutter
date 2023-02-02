import 'package:bbs_app/widgets/my_drop_down.dart';
import 'package:bbs_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/my_section_heading.dart';
import '../widgets/question_row.dart';

class Module08 extends StatefulWidget {
  const Module08({Key? key}) : super(key: key);

  @override
  State<Module08> createState() => _Module08State();
}

class _Module08State extends State<Module08> {
  String? q_66_value;
  List<String> q_66_item_list = [
    '1 - মেয়াদ শেষ',
    '2 - বিতাড়িত/ অবৈধ ',
    '3 - ইচ্ছাকৃত ভাবে চলে এসেছে ',
    '4 - স্বাস্থ্যগত কারনে',
    '5 - ছুটিতে এসেছেন',
    '6 - কম বেতন',
    '7 - অন্যান্য',
  ];
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [

          const Center(
            child: Text(
              'মডিউল ৮: জন্ম সংক্রান্ত (১০ বছর ও তদূর্ধ্ব বয়সের জন্য)  ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const MySectionHeading(heading:'গত ৫ বছরে খানার যে সকল সদস্য বিদেশ থেকে ফেরত এসেছেন তাদের জন্য' ,),
          const QuestionRow(
            questionNo: 'Q 64:',
            question: 'কোন দেশ হতে ফেরত এসেছেন?',
          ),
          Row(children: [
            const SizedBox(width: 20,),
            const Text('দেশের নাম'),
            const Spacer(),
            MyTextField(icon: Icons.edit,width: 250,),
            const SizedBox(width: 180,)
          ],),
          Row(children: [
            const SizedBox(width: 20,),
            const Text('দেশের কোড'),
            const Spacer(),
            MyTextField(icon: Icons.edit,width: 250,),
            const SizedBox(width: 180,)
          ],),

          const QuestionRow(
            questionNo: 'Q 65:',
            question: 'বিদেশ হতে কখন ফেরত এসেছেন?',
          ),
          Row(children: [
            const SizedBox(width: 20,),
            const Text('মাস'),
            const Spacer(),
            MyTextField(icon: Icons.edit,width: 250,),
            const SizedBox(width: 180,)
          ],),
          Row(children: [
            const SizedBox(width: 20,),
            const Text('বছর'),
            const Spacer(),
            MyTextField(icon: Icons.edit,width: 250,),
            const SizedBox(width: 180,)
          ],),
          const QuestionRow(
            questionNo: 'Q 66:',
            question: 'বিদেশ হতে ফেরত আসার প্রধান কারণ কি?',
          ),
          MyDropDown(items: q_66_item_list, dropDownCallback: (String text) {
            setState(() {
              q_66_value = text;
            });
          },)


        ],

      ),


    );
  }
}
