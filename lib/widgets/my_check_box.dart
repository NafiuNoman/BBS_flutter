import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({
    Key? key,
    required this.height,
    required this.checkList,
    this.nextBtnGap = 0.0,
  }) : super(key: key);

  final double height;
  final List checkList;

  final double nextBtnGap;

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Wrap(
            children: List.generate(
              widget.checkList.length,
              (i) => InkWell(
                onTap: (){
                  onTapped(i, !widget.checkList[i]['isActive']);

                },


                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: widget.checkList[i]['isActive'],
                      onChanged: (value) {
                        onTapped(i, value);
                      },
                    ),
                    Text(
                      widget.checkList[i]['title'],
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 0.0,
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

  void onTapped(int i, bool? value) {
     setState(() {
      widget.checkList[i]['isActive'] = value;
    });
  }
}
