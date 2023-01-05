import 'package:flutter/material.dart';

class MyRadioListTile extends StatefulWidget {
  final String value;

  const MyRadioListTile({Key? key, required this.value}) : super(key: key);


  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

class _MyRadioListTileState extends State<MyRadioListTile> {
  String? groupValue;
  @override
  Widget build(BuildContext context) {

    return  Expanded(
      child: RadioListTile(



        visualDensity:VisualDensity(horizontal: -4.0),
        dense: true,
        contentPadding: EdgeInsets.zero,
        value: widget.value,
        groupValue: groupValue,
        onChanged: (value) {
          setState(() {
            groupValue = value.toString();
          });
        },
        title: Text(widget.value,style: TextStyle(fontSize: 11,height: 1),),
      ),
    );
  }
}
