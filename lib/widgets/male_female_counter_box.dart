import 'package:flutter/material.dart';

import 'box_plus_minus_btn.dart';

class MaleFemaleCounterBox extends StatelessWidget {
  const MaleFemaleCounterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(width: 100,child: Column(
          children: const [
            BoxPlusMinusBtn(),
            Text(
              'পুরুষ',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
            )
          ],
        )),
        SizedBox(width: 100,child: Column(
          children: const [
            BoxPlusMinusBtn(),
            Text(
              'মহিলা',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
            )
          ],
        )),

      ],
    );
  }
}
