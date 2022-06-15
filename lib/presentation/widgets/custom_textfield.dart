import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType inputType;
  final IconData prefixIcon;
  final bool isObscureText;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.inputType,
    required this.prefixIcon,
    required this.controller,
    this.isObscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.quicksand(
          color: Colors.grey,
          fontSize: 20,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        prefixIcon: Icon(prefixIcon),
      ),
      obscureText: isObscureText,
      keyboardType: inputType,
      cursorRadius: const Radius.circular(20),
      cursorColor: Colors.red,
    );
  }
}
