import 'package:flutter/material.dart';

import 'box_plus_minus_btn.dart';

const textColor = Color.fromRGBO(73, 73, 73, 1);
const totalValueColor = Color.fromRGBO(0, 148, 68, 1);

class DoubleCounterQuestion extends StatelessWidget {
  final String question;
  final String number;

  const DoubleCounterQuestion({
    Key? key,
    required this.question,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'Q $number',
              style: const TextStyle(
                  color: textColor, fontWeight: FontWeight.w600),
            ),
          ),

          Expanded(
            flex: 10,
            child: Text(
              question,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: textColor,
                fontWeight: FontWeight.w400,
                // fontFamily: 'Hind',
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 35,
                    decoration: plusMinusBoxDecoration,
                    child: const Center(
                        child: Text(
                      '00',
                      style: TextStyle(
                          color: totalValueColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  const Text(
                    'মোট',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                ],
              )),
          Expanded(
            flex: 3,
            child: Column(
              children: const [
                BoxPlusMinusBtn(),
                Text(
                  'পুরুষ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                )
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: const [
                  BoxPlusMinusBtn(),
                  Text(
                    'মহিলা',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
