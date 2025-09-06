import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText, this.onChanged, this.obscureText = false, this.inputType});
  final String hintText;
  final bool obscureText; 
  TextInputType? inputType;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(

          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
          ),
        ),
      ),
    );
  }
}
