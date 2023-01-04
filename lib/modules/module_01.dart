import 'package:flutter/material.dart';

import '../widgets/double_counter_queation.dart';
class Module01 extends StatefulWidget {
  const Module01({Key? key}) : super(key: key);

  @override
  State<Module01> createState() => _Module01State();
}

class _Module01State extends State<Module01> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Module 1: Household Information ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                flex: 2,
                child: Text(
                  'Q 1a:',
                  style: TextStyle(
                      color: textColor, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                flex: 18,
                child: Text(
                  'Household Address',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    // fontFamily: 'Hind',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                hintStyle: const TextStyle(fontSize: 12),
                suffixIcon: const Icon(Icons.edit),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2)),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Q 2a:',
                  style: const TextStyle(
                      color: textColor, fontWeight: FontWeight.w600),
                ),
              ),
              // Expanded(
              //   flex: 1,
              //   child: Text(
              //     number,
              //     textAlign: TextAlign.start,
              //   ),
              // ),
              Expanded(
                flex: 18,
                child: Text(
                  'Sample Census Household no.',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    // fontFamily: 'Hind',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                hintStyle: TextStyle(fontSize: 12),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2)),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Q 2b:',
                  style: const TextStyle(
                      color: textColor, fontWeight: FontWeight.w600),
                ),
              ),
              // Expanded(
              //   flex: 1,
              //   child: Text(
              //     number,
              //     textAlign: TextAlign.start,
              //   ),
              // ),
              Expanded(
                flex: 18,
                child: Text(
                  'Census Household no.',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    // fontFamily: 'Hind',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                hintStyle: TextStyle(fontSize: 12),
                suffixIcon: Icon(Icons.edit),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2)),
              ),
            ),
          ),
          SizedBox(height: 10,),
          /////counter form start from here

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Q 3:',
                  style: const TextStyle(
                      color: textColor, fontWeight: FontWeight.w600),
                ),
              ),
              // Expanded(
              //   flex: 1,
              //   child: Text(
              //     number,
              //     textAlign: TextAlign.start,
              //   ),
              // ),
              Expanded(
                flex: 18,
                child: Text(
                  'Household Members',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    // fontFamily: 'Hind',
                  ),
                ),
              ),
            ],
          ),
          DoubleCounterQuestion(
            number: '3a.',
            question: 'Memner Usually live',
          ),
          DoubleCounterQuestion(
            number: '3b.',
            question:
            'Members: People who usually live in the house but are currently absent',
          ),
          DoubleCounterQuestion(
            number: '3c.',
            question: 'Members of the household currently live abroad',
          ),
          DoubleCounterQuestion(
            number: '3d.',
            question: 'Guest',
          ),
          DoubleCounterQuestion(
            number: '3e.',
            question:
            'Members of the household have gone abroad and returned (within the last 5 years)',
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
