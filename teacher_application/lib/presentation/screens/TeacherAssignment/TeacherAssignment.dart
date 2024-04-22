import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:student_application/presentation/widgets/MyButton.dart';
import 'package:student_application/presentation/widgets/MyTextField.dart';
import 'package:student_application/presentation/widgets/dateField.dart';

class TeacherAssignment extends StatefulWidget {
  const TeacherAssignment({Key? key}) : super(key: key);

  @override
  _TeacherAssignmentState createState() => _TeacherAssignmentState();
}

class _TeacherAssignmentState extends State<TeacherAssignment> {
  TextEditingController _dueDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _body(),
            SizedBox(
              height: 40,
            ),
            _submitButton()
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Column(
      children: [
        MyTextField(
          label: "Title",
        ),
        SizedBox(
          height: 5,
        ),
        MyTextField(
          label: "Description",
          maxLines: 6,
          minLines: 6,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DateFormField(
              dateController: _dueDateController, label: "Due date"),
        ),
        SizedBox(
          height: 10,
        ),
        _buildFilePicker(),
      ],
    );
  }

  Widget _buildFilePicker() {
    return Row(
      children: [
        Icon(Icons.attach_file),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: _openFilePicker,
            child: Text('Attach File'),
          ),
        ),
      ],
    );
  }

  void _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      print('File path: ${file.path}');
    } else {}
  }

  Widget _submitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: MyButton(
        text: 'Assign',
        verticalPadding: 10,
        textSize: 16,
        color: Colors.amber,
        horizontalPadding: 0,
      ),
    );
  }
}
