import 'package:flutter/material.dart';

/// Reusable Input Field with an icon, border, and placeholder text.
class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final int maxLines;
  final TextEditingController? controller;

  const CustomInputField({
    super.key,
    required this.hintText,
    this.icon,
    this.maxLines = 1,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 16, color: Colors.black87),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
        prefixIcon: icon != null
            ? Icon(icon, color: const Color(0xFF66BB6A), size: 22)
            : null,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        filled: true,
        fillColor: Colors.white,
        // Default Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        // Focused Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFF66BB6A), width: 1.5),
        ),
      ),
    );
  }
}
