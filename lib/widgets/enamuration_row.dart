import 'package:flutter/material.dart';
import '../styles/table_style.dart';

const Color boxFillColor = Color.fromRGBO(0, 140, 68, 0.1);
const Color boxBorderColor = Color.fromRGBO(0, 140, 68, 1);

class EnumerationRow extends StatelessWidget {
  final TextStyle textStyle;

  const EnumerationRow({
    Key? key,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Enumeration area: ',
          style: textStyle,
        ),
        areaContainer('01'),
        SizedBox(
          width: 5,
        ),
        areaContainer('02'),
        SizedBox(
          width: 5,
        ),
        areaContainer('03'),
      ],
    );
  }

  Container areaContainer(String value) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(3,1,3,1),
          child: Text(value,style: TextStyle(fontSize: 12,color: boxBorderColor),),
        ),
        decoration: BoxDecoration(
          color: boxFillColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: boxBorderColor)

        ),
      );
  }
}
