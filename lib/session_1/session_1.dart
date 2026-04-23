import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Welcome", style: TextStyle(fontSize: 40,fontFamily:"DancingScript",fontWeight:FontWeight.w400))),

        // svg
        // body: Center(child: Image.asset("assets/images/logo_withoutBG.png",height: 400,width: 400,)),
        // body: Center(
        //   child: Image.network(
        //     "https://images.unsplash.com/photo-1775185172785-4bbd6b0fc8f5?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8",
        //     height: 400,
        //     width: 400,
        //   ),
        // ),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          // leading: Icon(Icons.menu),
          centerTitle: false,
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
    );
  }
}
