import 'package:flutter/material.dart';

const textColor =  Color.fromRGBO(73, 73, 73, 1);
class QuestionRow extends StatelessWidget {
  final String questionNo;
  final String question;
 const  QuestionRow({Key? key, required this.questionNo, required this.question, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            questionNo,
            style: const TextStyle(
                color: textColor, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          flex: 18,
          child: Text(
            question,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              // fontFamily: 'Hind',
            ),
          ),
        ),
      ],
    );
  }
}

// 'Q 2a:'
