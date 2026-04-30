import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Single Child Scroll View Widget')),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 100, backgroundColor: Colors.red),
              CircleAvatar(radius: 100, backgroundColor: Colors.blue),
              CircleAvatar(radius: 100, backgroundColor: Colors.amber),
              CircleAvatar(radius: 100, backgroundColor: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
