import 'package:flutter/material.dart';

InputDecoration decoration = InputDecoration(
  contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
  enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
  hintStyle: const TextStyle(fontSize: 12),
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
);

class MyDropDown extends StatelessWidget {

 final Function(String) dropDownCallback;
 final List<String> items;


  const MyDropDown({
    Key? key,
    required this.items, required this.dropDownCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: decoration,
      items: items
          .map((item) => DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(fontSize: 12),
                ),
              ))
          .toList(),
      onChanged: onChanged
    );
  }

  void onChanged(String? value) {

    dropDownCallback(value!);
  }


}
