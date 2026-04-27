import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {
  const OperationButton({
    super.key,
    required this.title,
    required this.onpressed,
  });
  final String title;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff131629)),
      onPressed: onpressed,
      child: Text(title),
    );
  }
}
