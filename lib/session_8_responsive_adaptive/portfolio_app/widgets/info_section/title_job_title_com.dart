import 'package:flutter/material.dart';

class TitleJobTitleCom extends StatelessWidget {
  const TitleJobTitleCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hi, I'm Alex."),
        SizedBox(height: 8),
        //sub
        Text("Full-Stack Engineer"),
      ],
    );
  }
}
