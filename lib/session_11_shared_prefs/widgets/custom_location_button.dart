import 'package:flutter/material.dart';

/// Reusable Custom Green Button with a target icon.
class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color backgroundColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              backgroundColor, //const Color(0xFF66BB6A), // Main green color
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
