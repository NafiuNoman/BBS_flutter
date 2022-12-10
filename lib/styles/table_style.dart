import 'package:flutter/material.dart';

const Color tableStrokeColor = Color.fromRGBO(0, 140, 68, 0.2);
const Color tableRowFillColor = Color.fromRGBO(0, 140, 68, 0.03);
const Color tableHeadingRowFillColor = Color.fromRGBO(0, 140, 68, 0.8);
const Color tableDataTextColor = Color.fromRGBO(38, 38, 38, 1);
const Color areaBoxColor = Color.fromRGBO(38, 38, 38, 1);
const borderSide = BorderSide(
  width: 2,
  color: tableStrokeColor,
);
BoxDecoration boxDecoration =
    BoxDecoration(border: Border.all(color: areaBoxColor));

//Enumeration Area Box
Center areaBox(String value) => Center(
  child:   Container(

        decoration: BoxDecoration(

          border: Border.all(color: areaBoxColor),

          borderRadius: BorderRadius.circular(3),

        ),

    child: Padding(

      padding: const EdgeInsets.all(4.0),

      child: Text(value),

    ),

      ),
);
