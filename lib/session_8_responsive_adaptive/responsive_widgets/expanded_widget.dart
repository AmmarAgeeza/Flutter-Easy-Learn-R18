import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(height: 200, width: 150, color: Colors.amber),
            ),
            Expanded(
              child: Container(height: 200, width: 150, color: Colors.green),
            ),
            Expanded(
              child: Container(height: 200, width: 150, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
