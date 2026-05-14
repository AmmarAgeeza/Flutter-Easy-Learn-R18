import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.green,
              child: Center(child: Text("Hello")),
            ),
            Container(
              width: 100,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.blue,
              child: Center(child: Text("Hello")),
            ),
            Container(
              width: 100,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.redAccent,
              child: Center(child: Text("Hello")),
            ),
          ],
        ),
      ),
    );
  }
}
