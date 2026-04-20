import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text("Welcome"),
          actions: [
            Icon(Icons.settings, size: 60, color: Colors.red),
            Icon(Icons.settings, size: 60, color: Colors.red),
          ],
        ),

        drawer: Drawer(
          child: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 25),
                children: [
                  TextSpan(
                    text: "This ",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: "is ",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text: "flutter ",
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              ),
            ),
          ),
        ),

        // backgroundColor: Colors.cyan,
        // backgroundColor: Colors.cyanAccent[800],
        // backgroundColor: Color(0xffFFD338),
        // body: Center(
        //   child: Text(
        //     "Hello Flutter" * 10,
        //     maxLines: 2,
        //     overflow:TextOverflow.ellipsis ,
        //     style: TextStyle(
        //       color: Colors.cyan,
        //       fontSize: 35,
        //       fontWeight: FontWeight.bold,
        //       fontStyle: FontStyle.italic,
        //       decoration: TextDecoration.underline,
        //     ),
        //   ),
        // ),
      ),
    ),
  );
}
