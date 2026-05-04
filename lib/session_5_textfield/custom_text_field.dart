import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.validator,
    this.onChanged,
    required this.controller,
    this.maxLines = 1,
    required this.labelText,
    required this.hintText,
    required this.helperText,
    required this.prefix,
  });
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextEditingController controller;
  final int maxLines;
  final String labelText, hintText, helperText;
  final IconData prefix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      validator: validator,
      controller: controller,
      keyboardType: TextInputType.text,
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration(
        // label: Row(children: [Icon(Icons.email), Text("Email")]),
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,

        helperStyle: TextStyle(color: Colors.brown, fontSize: 16),
        // prefix: Icon(Icons.email),
        prefixIcon: Icon(prefix),
        // suffixIcon: Icon(Icons.visibility),
        //borders
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
