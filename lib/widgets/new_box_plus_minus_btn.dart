import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'box_plus_minus_btn.dart';





class NewPlusMinusBtn extends StatefulWidget {
  final void Function() addOnpressed;
  final void Function() minusOnpressed;
  final int count;
  const NewPlusMinusBtn({Key? key, required this.count, required this.addOnpressed, required this.minusOnpressed}) : super(key: key);

  @override
  State<NewPlusMinusBtn> createState() => _NewPlusMinusBtnState();
}

class _NewPlusMinusBtnState extends State<NewPlusMinusBtn> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: 35,
        decoration: plusMinusBoxDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: widget.minusOnpressed,
                icon: const Icon(
                  Icons.remove_circle_outline_outlined,
                  size: 19,
                ),
                color: const Color.fromRGBO(73, 73, 73, 0.7),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child:  Text(
                  '${widget.count}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: valueColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),

            ),
            Flexible(
              fit: FlexFit.loose,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: widget.addOnpressed,
                icon: const Icon(
                  Icons.add_circle_outline_outlined,
                  size: 19,
                ),
                color: const Color.fromRGBO(73, 73, 73, 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
