import 'package:flutter/material.dart';

class StarExample extends StatelessWidget {
  const StarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 70, color: Colors.amber),
              Icon(Icons.star, size: 70, color: Colors.orange),
              Icon(Icons.star, size: 70, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
