import 'package:bbs_app/styles/table_style.dart';
import 'package:flutter/material.dart';

class DataCollectionListPage extends StatelessWidget {
  const DataCollectionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  headingTextStyle: TextStyle(fontSize: 8,),
                  dataTextStyle: const TextStyle(fontSize: 8,color: tableDataTextColor),

                  showBottomBorder: true,
                  headingRowColor: MaterialStateProperty.all(tableHeadingRowFillColor),
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

                  columns: const [
                    DataColumn(label: Expanded(child: Text('Serial no'))),
                    DataColumn(label: Expanded(child: Text('Date'))),
                    DataColumn(label: Expanded(child: Text('Enumeration Area'))),
                    DataColumn(label: Expanded(child: Text('Household number'))),
                    DataColumn(label: Expanded(child: Text('Type'))),
                    ////
                    DataColumn(label: Expanded(child: Text('Serial no'))),
                    DataColumn(label: Expanded(child: Text('Date'))),
                    DataColumn(label: Expanded(child: Text('Enumeration Area'))),
                    DataColumn(label: Expanded(child: Text('Household number'))),
                    DataColumn(label: Expanded(child: Text('Type'))),

                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('22.02.2022')),
                      DataCell(Text('1')),
                      DataCell(Text('045')),
                      DataCell(Text('General')),
                      ///////
                      DataCell(Text('1')),
                      DataCell(Text('22.02.2022')),
                      DataCell(Text('1')),
                      DataCell(Text('045')),
                      DataCell(Text('General')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('23.02.2022')),
                      DataCell(Text('2')),
                      DataCell(Text('066')),
                      DataCell(Text('Institutional')),
                      /////////////
                      DataCell(Text('2')),
                      DataCell(Text('23.02.2022')),
                      DataCell(Text('2')),
                      DataCell(Text('066')),
                      DataCell(Text('Institutional')),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
