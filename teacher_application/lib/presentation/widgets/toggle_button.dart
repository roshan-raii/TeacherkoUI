import 'package:flutter/material.dart';
import 'package:student_application/presentation/widgets/MyTextField.dart';
import 'package:student_application/service/validation_service.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passController;
  const PasswordField({super.key, required this.passController});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscurePassword = true;
  Icon visible = const Icon(Icons.visibility, color: Colors.black);
  Icon nonVisible = const Icon(Icons.visibility_off, color: Colors.black);

  Widget toggleButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: IconButton(
        icon: obscurePassword ? visible : nonVisible,
        onPressed: () {
          setState(() {
            obscurePassword = !obscurePassword;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      hint: "Password",
      controller: widget.passController,
      suffixIcon: toggleButton(),
      // validator: ValidationSesrvice.validateNonEmptiness,
      obscureText: obscurePassword,
      prefixIcon: const Icon(Icons.lock),
      validator: ValidationService.validatePassword,
    );
  }
}
