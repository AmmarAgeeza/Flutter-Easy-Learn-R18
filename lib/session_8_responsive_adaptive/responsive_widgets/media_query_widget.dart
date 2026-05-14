import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(child: Text("Hello")),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text("Hello")),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.redAccent,
              child: Center(child: Text("Hello")),
            ),
          ],
        ),
      ),
    );
  }
}
