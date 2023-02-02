import 'package:flutter/material.dart';

import 'double_counter_queation.dart';

class QuestionRowWithNote extends StatelessWidget {
  const QuestionRowWithNote({
    Key? key,
    required this.questionNo,
    required this.question,
    required this.note,
  }) : super(key: key);
  final String questionNo;
  final String question;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(
          questionNo,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
        ),
        Text(
          question,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            note,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w100, fontSize: 12),
          ),
        )
      ],
    );
  }
}
