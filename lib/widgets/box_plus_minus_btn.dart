import 'package:flutter/material.dart';

const borderColor = Color.fromRGBO(153, 153, 153, 1);
const valueColor = Color.fromRGBO(0, 148, 68, 1);

// FaIcon(FontAwesomeIcons.circleMinus,size: 16,)

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
                onPressed: _deCremnt,
                icon: const Icon(
                  Icons.remove_circle_outline_outlined,
                  size: 19,
                ),
                color: const Color.fromRGBO(73, 73, 73, 0.7),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                _value.toString(),
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
                onPressed: _inCrement,
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
