import 'package:bbs_app/widgets/question_row.dart';
import 'package:flutter/material.dart';
class Module02 extends StatefulWidget {
  const Module02({Key? key}) : super(key: key);

  @override
  State<Module02> createState() => _Module02State();
}

class _Module02State extends State<Module02> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column( mainAxisSize: MainAxisSize.min,children: [



          Text(
            'Module 2: Household Information ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          QuestionRow(questionNo: 'Q 4:', question: 'Household Type'),
          QuestionRow(questionNo: 'Q 5:', question: 'Main household wall build with'),
          QuestionRow(questionNo: 'Q 6:', question: 'Main household roof build with'),
          QuestionRow(questionNo: 'Q 7:', question: 'Main household floor item'),
          QuestionRow(questionNo: 'Q 8:', question: 'Living Place'),
          QuestionRow(questionNo: 'Q 9:', question: 'Is this a slum?'),
          QuestionRow(questionNo: 'Q :', question: 'Cancellation Form'),



        ],),
    );

  }
}
