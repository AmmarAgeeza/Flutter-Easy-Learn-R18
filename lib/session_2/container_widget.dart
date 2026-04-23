import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 250,
            width: 250,

            // margin: EdgeInsets.all(24),
            // padding: EdgeInsets.symmetric(horizontal: 24, vertical: 100),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                colors: [Colors.red, Colors.amber, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
        ),
      ),
    );
  }
}
