import 'package:bbs_app/widgets/my_radio_list.dart';
import 'package:flutter/material.dart';

import '../widgets/my_drop_down.dart';
import '../widgets/my_text_field.dart';
import '../widgets/question_row.dart';

class Module04 extends StatefulWidget {
  const Module04({Key? key}) : super(key: key);

  @override
  State<Module04> createState() => _Module04State();
}

class _Module04State extends State<Module04> {
  bool isVisibility=false;
  String q_32a_value='';

  void dropDownCallBack(String text)
  {
    q_32a_value = text;
    setState(() {

      text=='1. Same District'?isVisibility=true:isVisibility=false;

    });

  }



  String q22HelperText =
      """( Enter the names of all the members who usually live in this house. Write the member's nickname in English capital letters. Write the names of the head of household first, then wife/husband, younger children to older children, other 
 relatives and non-relatives in order.)""";
  String? q_25_groupValue;
  String? q_27_groupValue;
  String? q_29_groupValue;
  String? q_28_groupValue;
  String? q_30_groupValue;
  String? q_31_groupValue;
  List<String> q_24_item_list = [
    '1. Head of the house',
    '2. Wife/Husband',
    '3. Child',
    '4. Father-Mother / Father-in-law-Mother-in-law',
    '5. Daughter-in-law/Son-in-law',
    '6. Brother-Sister/ Brother-in-law / Sister-in-law',
    '7. Grandchildren',
    '8. Other relatives',
    '9. Inanimate'
  ];
  List<String> q_32_item_list = [
    '1. Same District',
    '2. Different District ',
    '3. Different Country',


  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Module 4: Person Information',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Wrap(
            children: [
              const Text(
                'Q 22:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              const Text(
                '  The name of the house member?',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  q22HelperText,
                  style: const TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
          MyTextField(icon: Icons.edit,),

          Row(
            children: const [
              Text(
                'Q 23:',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Text(
                '  Age?',
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "(In a full year) (Enter 00 if less than one year)",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                ),
              )
            ],
          ),
          MyTextField(width: 120,icon: Icons.edit,),

          const QuestionRow(
            questionNo: 'Q 24:',
            question: ' Relationship with the head household? ',
          ),


          MyDropDown(items: q_24_item_list,dropDownCallback: dropDownCallBack,),

          const QuestionRow(
            questionNo: 'Q 25:',
            question: 'Gender?',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['Male', 'Female', 'Other'],
              groupValue: q_25_groupValue,
              onChange: (value) {
                setState(() {
                  q_25_groupValue = value;
                });
              }),
          ///TODO: 26 no question

          const QuestionRow(
            questionNo: 'Q 27:',
            question: 'Is mother alive now??',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['Yes', 'No', 'Unknown'],
              groupValue: q_27_groupValue,
              onChange: (value) {
                setState(() {
                  q_27_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 28:',
            question: 'Is father alive now?? ',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['Yes', 'No', 'Unknown'],
              groupValue: q_28_groupValue,
              onChange: (value) {
                setState(() {
                  q_28_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 29:',
            question: 'Religion?? ',
          ),
          MyRadioList(
              height: 50,
              radioList: const [
                'Muslim',
                'Hindu',
                'Buddha',
                'Christian',
                'Others'
              ],
              groupValue: q_29_groupValue,
              onChange: (value) {
                setState(() {
                  q_29_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 30:',
            question: 'Language?? ',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['Bengali', 'Others'],
              groupValue: q_30_groupValue,
              onChange: (value) {
                setState(() {
                  q_30_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 31:',
            question: 'Second Language??',
          ),
          MyRadioList(
              height: 50,
              radioList: const ['Bengali', 'English', 'Others', 'None'],
              groupValue: q_31_groupValue,
              onChange: (value) {
                setState(() {
                  q_31_groupValue = value;
                });
              }),
          const QuestionRow(
            questionNo: 'Q 32 a:',
            question: 'Where’s the Birthplace?',
          ),
          MyDropDown(items: q_32_item_list,dropDownCallback: dropDownCallBack,),
          Visibility(
            visible: isVisibility,
            child: const QuestionRow(
              questionNo: 'Q 33 a:',
              question: 'From how many years do you live in this district?',
            ),
          ),
          Visibility(
            visible: isVisibility,
            child: Padding(
              padding:
              const EdgeInsets.only(left: 20.0, top: 5, right: 8, bottom: 8),
              child: SizedBox(
                width: 120,
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
            ),
          ),

        ],
      ),
    );
  }
}



