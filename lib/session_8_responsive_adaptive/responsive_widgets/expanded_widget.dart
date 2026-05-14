import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(height: 200, width: 150, color: Colors.amber),
            Container(height: 200, width: 50, color: Colors.green),
            Container(height: 200, width: 150, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

