import 'package:bbs_app/styles/table_style.dart';
import 'package:flutter/material.dart';
import '../conts/constant.dart';
import '../styles/common_colors.dart';
import '../utils/app_bar.dart';

class DataCollectionListPage extends StatelessWidget {
  const DataCollectionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 10 / 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      const Text(
                        'Survey Data Collection List',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: statusBarColor, fontWeight: FontWeight.w600),
                      ),
                      const Divider(
                        color: statusBarColor,
                        indent: 90,
                        endIndent: 90,
                        thickness: 1.5,
                      ),
                      Row(


                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           SizedBox(
                             height: 80,
                             width: 120,

                            child: TextField(
                              decoration: InputDecoration(

                                  icon: const Icon(
                                Icons.search,
                                color: Colors.green,
                              )),
                            ),

                          ),
                          Container(
                            color: Colors.blue,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            tableSection(),
          ],
        ),
      ),
    );
  }

  Expanded tableSection() {
    return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 15,
                    headingRowHeight: 30,
                    dataRowHeight: 40,
                    headingTextStyle: TextStyle(
                      fontSize: 8,
                    ),
                    dataTextStyle: const TextStyle(
                      fontSize: 8,
                      color: tableDataTextColor,
                    ),
                    showBottomBorder: true,
                    headingRowColor:
                        MaterialStateProperty.all(tableHeadingRowFillColor),
                    dataRowColor:
                        MaterialStateProperty.all(tableRowFillColor),
                    border: TableBorder(
                      borderRadius: BorderRadius.circular(3),
                      top: borderSide,
                      bottom: borderSide,
                      left: borderSide,
                      right: borderSide,
                      horizontalInside: borderSide,
                      verticalInside: borderSide,
                    ),
                    columns: const [
                      DataColumn(
                        label: Expanded(
                          child: Text('Serial'),
                        ),
                      ),
                      DataColumn(label: Expanded(child: Text('Date'))),
                      DataColumn(
                          label: Expanded(child: Text('Enumeration Area'))),
                      DataColumn(
                          label: Expanded(child: Text('Household number'))),
                      DataColumn(label: Expanded(child: Text('Type'))),
                      DataColumn(label: Expanded(child: Text('Male'))),
                      DataColumn(label: Expanded(child: Text('Female'))),
                      DataColumn(label: Expanded(child: Text('Status'))),
                      DataColumn(
                          label: Expanded(
                              child: Icon(
                        Icons.menu,
                        size: 15,
                        color: Colors.white,
                      ))),
                      ////
                    ],
                    rows: dataList
                        .map(
                          (obj) => DataRow(
                            cells: [
                              DataCell(Center(
                                  child: Text(
                                obj['serial'].toString(),
                              ))),
                              DataCell(Center(
                                  child: Text(obj['date'].toString()))),
                              DataCell(areaBox(
                                  obj['Enumeration_Area'].toString())),
                              DataCell(Center(
                                  child: Text(
                                obj['Household_Number'].toString(),
                              ))),
                              DataCell(Center(
                                  child: Text(obj['Type'].toString()))),
                              DataCell(Center(
                                  child: Text(obj['Male'].toString()))),
                              DataCell(Center(
                                  child: Text(obj['Female'].toString()))),
                              DataCell(areaBox(obj['Status'].toString())),
                              const DataCell(Center(
                                child: Icon(
                                  Icons.edit,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                              )),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          );
  }
}
