import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
        aspectRatio: 16/9,// width:height aspect ratio
        child: FlutterLogo()),
      ),
    );
  }
}
