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
          DataTable(columns: [], rows: [])
          ],
        ),
      ),
    );
  }
}
