import 'package:bbs_app/widgets/male_female_counter_box.dart';
import 'package:flutter/material.dart';

import '../widgets/my_section_heading.dart';
import '../widgets/my_text_field.dart';
import '../widgets/question_row.dart';
import '../widgets/question_row_with_note.dart';

class Module09 extends StatefulWidget {
  const Module09({Key? key}) : super(key: key);

  @override
  State<Module09> createState() => _Module09State();
}

class _Module09State extends State<Module09> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  const [
          Center(
            child: Text(
              'মডিউল ৯: আন্তর্জাতিক মাইগ্রেশন  ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          MySectionHeading(
            heading:
                '(৫ বছর ও তদূর্ধ্ব বয়সের লোকজন যারা খানার সদস্য ছিলেন কিন্তু ৬ মাস বা ততোধিক সময়ের জন্য বিদেশ আছেন অথবা থাকতে বিদেশ গেছেন)',
          ),
          QuestionRowWithNote(
            questionNo: 'Q 67:',
            question: ' প্রবাসীর নাম ',
            note: "( ইংরেজিতে বড় অক্ষরে ডাক নাম লিখুন )",
          ),
          QuestionRow(questionNo: "Q 68:", question: 'লিঙ্গ'),
          MaleFemaleCounterBox(maleOrBoy:'ছেলে' ,femaleOrGirl: 'মেয়ে',),
          QuestionRowWithNote(questionNo: 'Q 69:', question: '  বয়স ', note:'( বিদেশে যাবার সময় - পূর্ণ বছরে )'),
          MyTextField(icon: Icons.edit,width: 250,inputType: TextInputType.number,),

          QuestionRowWithNote(questionNo: 'Q 70:', question: '  সর্বোচ্চ শ্রেণী পাশ ', note:'( বিদেশে যাবার সময় - শিক্ষা কোড লিখুন ) '),
          MyTextField(icon: Icons.edit,width: 250,),
          QuestionRowWithNote(questionNo: 'Q 71:', question: '  বিদেশ থাকার সময়কাল ', note:'( পূর্ণ বছরে)'),
          MyTextField(icon: Icons.edit,width: 250,inputType: TextInputType.number,),
          QuestionRow(questionNo: 'Q 72:', question: 'বিদেশ যাওয়ার কারণ'),
          MyTextField(icon: Icons.edit,width: 250,),
          QuestionRowWithNote(questionNo: 'Q 73:', question: '  সর্বশেষ গন্তব্য ', note:'( দেশের কোড লিখুন )'),
          MyTextField(icon: Icons.edit,width: 250,),

        ],
      ),
    );
  }
}
