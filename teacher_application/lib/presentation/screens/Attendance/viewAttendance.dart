import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  // Sample student attendance data
  List<Map<String, dynamic>> studentAttendance = [
    {'name': 'Student 1', 'attendance': 'Present'},
    {'name': 'Student 2', 'attendance': 'Absent'},
    {'name': 'Student 3', 'attendance': 'Present'},
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Attendance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Table header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Student Name',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Attendance',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            // Table content
            Expanded(
              child: ListView.builder(
                itemCount: studentAttendance.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(studentAttendance[index]['name']),
                        Text(studentAttendance[index]['attendance']),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
