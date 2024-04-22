import 'package:flutter/material.dart';
import 'package:student_application/presentation/screens/TeacherAssignment/TeacherAssignment.dart';

import 'package:student_application/presentation/screens/TeacherAssignment/studentSubmission.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: TeacherAssignment(),
    ));
  }
}
