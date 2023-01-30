import 'package:flutter/material.dart';

class MyRadioList extends StatelessWidget {
  const MyRadioList({
    Key? key,
    required this.height,
    required this.radioList,
    required this.groupValue,
    required this.onChange,
    this.nextBtnGap = 0.0,
  }) : super(key: key);

  final double height;
  final List radioList;
  final String? groupValue;
  final double nextBtnGap;
  final void Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    print('$groupValue');
    return SizedBox(
      height: height,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Wrap(
            children: List.generate(
              radioList.length,
              (i) => InkWell(
                onTap: () {
                  if (groupValue != radioList[i]) {
                    onChange(radioList[i]);
                  }
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio(
                      value: radioList[i],
                      groupValue: groupValue,
                      onChanged: (newValue) {
                        onChange(newValue!);
                      },
                    ),
                    Text(
                      radioList[i],
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: nextBtnGap,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*

 Radio(
                      value: radioList[i],
                      groupValue: groupValue,
                      onChanged: onChange,
                    ),
 */
