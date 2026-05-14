import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 80,
          color: Colors.black12,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Responsive Text" * 4,
              style: TextStyle(fontSize: 50),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
