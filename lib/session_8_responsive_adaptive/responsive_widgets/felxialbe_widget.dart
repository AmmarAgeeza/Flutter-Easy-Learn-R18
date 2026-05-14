import 'package:flutter/material.dart';

class FelxialbeWidget extends StatelessWidget {
  const FelxialbeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(width: 100, height: 80, color: Colors.black12),
            Container(width: 150, height: 80, color: Colors.blue),
            Flexible(
              child: Container(
                width: 150,
                height: 80,
                color: Colors.red,
                child: Text("Data" * 4, style: TextStyle(fontSize: 35)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
