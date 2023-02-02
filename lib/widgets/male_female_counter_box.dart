import 'package:flutter/material.dart';

import 'box_plus_minus_btn.dart';

class MaleFemaleCounterBox extends StatelessWidget {
  const MaleFemaleCounterBox({
    Key? key,
     this.maleOrBoy='পুরুষ',
     this.femaleOrGirl='মহিলা',
  }) : super(key: key);
  final String maleOrBoy;
  final String femaleOrGirl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 100,
            child: Column(
              children:  [
                BoxPlusMinusBtn(),
                Text(
                  maleOrBoy,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                )
              ],
            )),
        SizedBox(
            width: 100,
            child: Column(
              children:  [
                BoxPlusMinusBtn(),
                Text(
                  femaleOrGirl,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                )
              ],
            )),
      ],
    );
  }
}
