import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const borderColor = Color.fromRGBO(153, 153, 153, 1);
const valueColor = Color.fromRGBO(0, 148, 68, 1);

 Decoration plusMinusBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(4),
  border: Border.all(
      width: 1.5, strokeAlign: StrokeAlign.inside, color: borderColor),
);

class BoxPlusMinusBtn extends StatefulWidget {
  const BoxPlusMinusBtn({Key? key}) : super(key: key);

  @override
  State<BoxPlusMinusBtn> createState() => _BoxPlusMinusBtnState();
}

class _BoxPlusMinusBtnState extends State<BoxPlusMinusBtn> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: plusMinusBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: IconButton(
                onPressed: _deCremnt,
                icon: FaIcon(FontAwesomeIcons.circleMinus),color: Color.fromRGBO(73, 73, 73, 0.7), ),
          ),
          Text(
            _value.toString(),
            style: TextStyle(color:valueColor,fontSize: 16,fontWeight: FontWeight.w500),
          ),
           Expanded(
             child: IconButton(
              onPressed: _inCrement,
              icon: Icon(FontAwesomeIcons.circlePlus),
              color: Color.fromRGBO(73, 73, 73, 0.7),
          ),
           ),
        ],
      ),
    );
  }

  _inCrement() {
    setState(() {
      _value++;
    });
  }

  _deCremnt() {
    _value != 0
        ? setState(() {
            _value--;
          })
        : _value = 0;
  }
}
