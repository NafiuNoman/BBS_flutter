import 'package:bbs_app/styles/table_style.dart';
import 'package:flutter/material.dart';

class DataCollectionListPage extends StatelessWidget {
  const DataCollectionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataList = [
      {
        "serial": "1",
        "date": "22.02.2022",
        "Enumeration_Area": "01",
        "Household_Number": "045",
        "Type": "General",
        "Male": "03",
        "Female": "06",
        "Status": "Submitted"
      },
      {
        "serial": "2",
        "date": "23.05.2022",
        "Enumeration_Area": "05",
        "Household_Number": "075",
        "Type": "Extreme",
        "Male": "66",
        "Female": "16",
        "Status": "Approved"
      },
      {
        "serial": "3",
        "date": "12.02.2022",
        "Enumeration_Area": "01",
        "Household_Number": "045",
        "Type": "Easy",
        "Male": "09",
        "Female": "05",
        "Status": "Recommended"
      },
      {
        "serial": "4",
        "date": "22.02.2022",
        "Enumeration_Area": "01",
        "Household_Number": "045",
        "Type": "Normal",
        "Male": "59",
        "Female": "29",
        "Status": "Approved"
      },
      {
        "serial": "5",
        "date": "22.02.2022",
        "Enumeration_Area": "01",
        "Household_Number": "045",
        "Type": "Intermediate",
        "Male": "27",
        "Female": "94",
        "Status": "Submitted"
      }
    ];

    // void makeCell() {
    //   dataList.map((obj) => print(obj));
    //   print('aaaaaaaaa');
    // }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 10 / 2,
              child: Container(
                color: Colors.lightGreenAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 15,
                  headingRowHeight: 30,
                  dataRowHeight: 40,
                  headingTextStyle: TextStyle(
                    fontSize: 8,
                  ),
                  dataTextStyle:
                      const TextStyle(fontSize: 8, color: tableDataTextColor,),
                  showBottomBorder: true,
                  headingRowColor:
                      MaterialStateProperty.all(tableHeadingRowFillColor),
                  dataRowColor: MaterialStateProperty.all(tableRowFillColor),
                  border: TableBorder(
                    borderRadius: BorderRadius.circular(3),
                    top: borderSide,
                    bottom: borderSide,
                    left: borderSide,
                    right: borderSide,
                    horizontalInside: borderSide,
                    verticalInside: borderSide,
                  ),
                  columns: [
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
                            DataCell(Text(obj['serial'].toString(),textAlign: TextAlign.center,)),
                            DataCell(Text(obj['date'].toString())),
                            DataCell(
                                areaBox(obj['Enumeration_Area'].toString())),
                            DataCell(Text(obj['Household_Number'].toString(),textAlign: TextAlign.center,)),
                            DataCell(Text(obj['Type'].toString())),
                            DataCell(Text(obj['Male'].toString())),
                            DataCell(Text(obj['Female'].toString())),
                            DataCell(areaBox(obj['Status'].toString())),
                            DataCell(Icon(
                              Icons.edit,
                              size: 15,
                              color: Colors.grey,
                            )),
                          ],
                        ),
                      )
                      .toList(),

                  // DataRow(cells: [
                  //   DataCell(Text('1')),
                  //   DataCell(Text('22.02.2022')),
                  //   DataCell(Text('1')),
                  //   DataCell(Text('045')),
                  //   DataCell(Text('General')),
                  //   ///////
                  //   DataCell(Text('1')),
                  //   DataCell(Text('22.02.2022')),
                  //   DataCell(Text('1')),
                  //   DataCell(Text('045')),
                  //   DataCell(Text('General')),
                  // ]),
                  // DataRow(cells: [
                  //   DataCell(Text('2')),
                  //   DataCell(Text('23.02.2022')),
                  //   DataCell(Text('2')),
                  //   DataCell(Text('066')),
                  //   DataCell(Text('Institutional')),
                  //   /////////////
                  //   DataCell(Text('2')),
                  //   DataCell(Text('23.02.2022')),
                  //   DataCell(Text('2')),
                  //   DataCell(Text('066')),
                  //   DataCell(Text('Institutional')),
                  // ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
