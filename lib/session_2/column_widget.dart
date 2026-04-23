import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
