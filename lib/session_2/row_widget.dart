import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Easy ",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
                Text(
                  "Learn ",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
                Text(
                  "Academy",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
                Text(
                  "Easy ",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
                Text(
                  "Learn ",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
                Text(
                  "Academy",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
