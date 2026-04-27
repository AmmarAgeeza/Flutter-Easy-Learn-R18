import 'package:flutter/material.dart';

class NumberComponet extends StatelessWidget {
  const NumberComponet({
    super.key,
    required this.num,
    required this.add,
    required this.minius,
  });

  final int num;
  final Function() add; // (){}
  final Function() minius;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //text
        Text(num.toString(), style: TextStyle(fontSize: 60)),

        // add - min
        Column(
          children: [
            IconButton(
              onPressed: add,
              icon: Icon(Icons.add, size: 35, color: Colors.green),
            ),
            SizedBox(height: 24),
            IconButton(
              onPressed: minius,
              icon: Icon(Icons.minimize, size: 35, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
