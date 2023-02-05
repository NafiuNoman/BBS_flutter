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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'মডিউল ১: পরিচিতি ও খানার সার-সংক্ষেপ ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.gps_fixed),
            label: const Text('জিপিএস অবস্থান',style: TextStyle(fontSize: 12),),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(0, 140, 68, 1))),
          ),

          const QuestionRow(questionNo: 'Q 1a:', question: 'খানার ঠিকানা'),
          const MyTextField(
            icon: Icons.edit,
          ),

          const QuestionRow(
              questionNo: 'Q 2a:', question: 'নমুনা শুমারি খানা নম্বর'),
          const MyTextField(),
          const QuestionRow(questionNo: 'Q 2b:', question: 'শুমারি খানা নম্বর'),
          const MyTextField(),
          const SizedBox(
            height: 10,
          ),
          /////counter form start from here
          const QuestionRow(questionNo: 'Q 3:', question: 'খানার সদস্য'),

          const DoubleCounterQuestion(
            number: '3a.',
            question: 'সদস্য সাধারণত: এ খানায় বসবাস করেন',
          ),
          const DoubleCounterQuestion(
            number: '3b.',
            question:
                'সদস্য সাধারণতঃ এ খানায় বসবাস করেন কিন্তু বর্তমানে অনুপস্থিত',
          ),
          const DoubleCounterQuestion(
            number: '3c.',
            question: 'খানার সাধারণ  সদস্য বর্তমানে বিদেশে বসবাস করেন',
          ),
          const DoubleCounterQuestion(
            number: '3d.',
            question: 'অতিথি',
          ),
          const DoubleCounterQuestion(
            number: '3e.',
            question:
                'খানার সাধারণ সদস্য বিদেশ গিয়েছিলেন এবং গত ৫ বছরের মধ্যে ফেরত এসেছেন',
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
