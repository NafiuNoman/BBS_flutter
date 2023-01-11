import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
 final IconData? icon;
 final double? width;

   MyTextField({
    Key? key, this.icon, this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 20.0, top: 5, right: 8, bottom: 8),
      child: SizedBox(  width: width,
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
            enabledBorder: const OutlineInputBorder(
                borderSide:
                BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
            hintStyle: const TextStyle(fontSize: 12),
            suffixIcon:  Icon(icon),
            filled: true,
            fillColor: Colors.white,
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
          ),
        ),
      ),
    );
  }
}
