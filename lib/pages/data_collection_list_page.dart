import 'package:bbs_app/styles/table_style.dart';
import 'package:flutter/material.dart';
import '../conts/constant.dart';
import '../styles/common_colors.dart';
import '../utils/app_bar.dart';
import '../widgets/enamuration_row.dart';

class DataCollectionListPage extends StatelessWidget {
  const DataCollectionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            searchAndFilterSection(),
            tableSection(),
          ],
        ),
      ),
    );
  }

  AspectRatio searchAndFilterSection() {
    return AspectRatio(
      aspectRatio: 10 / 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            // Banner
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Survey Data Collection List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: statusBarColor, fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    'assets/images/divider_pic.png',
                    width: 230,
                  ),
                ],
              ),
            ),
            // Search and filter
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Search
                  Flexible(
                    flex: 5,
                    fit: FlexFit.loose,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(217, 217, 217, 1))),
                        hintText: 'Search',
                        hintStyle: TextStyle(fontSize: 12),
                        suffixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2)),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 7,
                  ),
                  // Filter
                  Flexible(
                    flex: 5,
                    fit: FlexFit.loose,
                    child: DropdownButtonFormField(
                      hint: Text(
                        'Sort by',
                        style: TextStyle(fontSize: 11),
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2)),
                        contentPadding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                        // hintText: 'Sort By',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        prefixIcon: Icon(Icons.swap_vert),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(217, 217, 217, 1))),

                        focusedBorder: OutlineInputBorder(),
                      ),
                      items: [],
                      onChanged: null,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
            ),
            // Area info
            Expanded(
              flex: 1,
              child: EnumerationRow(
                textStyle: TextStyle(fontSize: 12,color: Color.fromRGBO(153, 153, 153, 1)),
              ),
            ),
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
                DataColumn(
                  label: Expanded(
                    child: Text('Serial'),
                  ),
                ),
                DataColumn(label: Expanded(child: Text('Date'))),
                DataColumn(label: Expanded(child: Text('Enumeration Area'))),
                DataColumn(label: Expanded(child: Text('Household number'))),
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
                        DataCell(Center(child: Text(obj['date'].toString()))),
                        DataCell(areaBox(obj['Enumeration_Area'].toString())),
                        DataCell(Center(
                            child: Text(
                          obj['Household_Number'].toString(),
                        ))),
                        DataCell(Center(child: Text(obj['Type'].toString()))),
                        DataCell(Center(child: Text(obj['Male'].toString()))),
                        DataCell(Center(child: Text(obj['Female'].toString()))),
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

