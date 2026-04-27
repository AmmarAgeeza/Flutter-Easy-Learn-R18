
import 'package:flutter/material.dart';

class ResultComponet extends StatelessWidget {
  const ResultComponet({
    super.key,
    required this.result,
  });

  final int result;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 3),
      ),
      height: 100,
    
      child: Text(
        "Result : $result",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

