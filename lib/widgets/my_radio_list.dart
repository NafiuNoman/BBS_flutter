import 'package:flutter/material.dart';

class MyRadioList extends StatelessWidget {
  const MyRadioList({
    Key? key,
    required this.height,
    required this.radioList,
    required this.groupValue,
    required this.onChange,
  }) : super(key: key);

  final double height;
  final List radioList;
  final String? groupValue;
  final void Function(dynamic p1)? onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Align(
        alignment: Alignment.centerLeft,

        child: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Wrap(
            children: List.generate(
              radioList.length,
                  (i) => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    value: radioList[i],
                    groupValue: groupValue,
                    onChanged: onChange,
                  ),
                  Text(
                    radioList[i],
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
