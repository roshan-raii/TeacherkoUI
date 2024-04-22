import 'package:flutter/material.dart';

class TeacherTaskViewing extends StatelessWidget {
  const TeacherTaskViewing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // 5% of screen width as column spacing

    return Scaffold(
      appBar: AppBar(
        title: Text('Task Viewing'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: screenWidth * 0.06,
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.grey[300]!),
          columns: [
            DataColumn(
              label: Container(
                width: 30,
                child: Text("S.N."),
              ),
            ),
            DataColumn(
              label: Text('Student Name',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label: Text('Module Name',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label:
                  Text('Status', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
          rows: [
            DataRow(cells: [
              DataCell(
                Text("1"),
              ),
              DataCell(
                Text("John Doe"),
              ),
              DataCell(
                Text("Database"),
              ),
              DataCell(
                Text("Pending"),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Text("2"),
              ),
              DataCell(
                Text("Jane Smith"),
              ),
              DataCell(
                Text("Networking"),
              ),
              DataCell(
                Text("Submitted"),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Text("3"),
              ),
              DataCell(
                Text("Alice Johnson"),
              ),
              DataCell(
                Text("Algorithms"),
              ),
              DataCell(
                Text("Graded"),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Text("4"),
              ),
              DataCell(
                Text("Bob Brown"),
              ),
              DataCell(
                Text("Security"),
              ),
              DataCell(
                Text("Pending"),
              ),
            ]),
          ].map((dataRow) {
            return DataRow(
              cells: dataRow.cells.map((dataCell) {
                return DataCell(
                  Expanded(
                    child: Container(
                      child: dataCell.child,
                    ),
                  ),
                );
              }).toList(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
