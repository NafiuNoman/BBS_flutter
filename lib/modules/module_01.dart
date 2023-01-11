import 'package:bbs_app/widgets/question_row.dart';
import 'package:flutter/material.dart';

import '../widgets/double_counter_queation.dart';
import '../widgets/my_text_field.dart';
class Module01 extends StatefulWidget {
  const Module01({Key? key}) : super(key: key);

  @override
  State<Module01> createState() => _Module01State();
}

class _Module01State extends State<Module01> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Module 1: Household Information ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const QuestionRow(questionNo: 'Q 1a:', question: 'Household Address'),
          MyTextField(icon: Icons.edit,),
          const QuestionRow(questionNo: 'Q 2a:', question: 'Sample Census Household no.'),
          MyTextField(),
          const QuestionRow(questionNo: 'Q 2b:', question: 'Census Household no.'),
          MyTextField(),
          const SizedBox(height: 10,),
          /////counter form start from here
          const QuestionRow(questionNo: 'Q 3:', question: 'Household Members'),

          const DoubleCounterQuestion(
            number: '3a.',
            question: 'Memner Usually live',
          ),
          const DoubleCounterQuestion(
            number: '3b.',
            question:
            'Members: People who usually live in the house but are currently absent',
          ),
          const DoubleCounterQuestion(
            number: '3c.',
            question: 'Members of the household currently live abroad',
          ),
          const DoubleCounterQuestion(
            number: '3d.',
            question: 'Guest',
          ),
          const DoubleCounterQuestion(
            number: '3e.',
            question:
            'Members of the household have gone abroad and returned (within the last 5 years)',
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}
