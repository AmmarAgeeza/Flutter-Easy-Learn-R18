import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: "Message",
          child: Icon(Icons.chat),
        ),
        appBar: AppBar(title: Text('Buttons Widgets in flutter')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => log("Inkwell"),
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    // color: Colors.green,
                    child: Column(
                      children: [Text("business"), Icon(Icons.business)],
                    ),
                  ),
                ),

                SizedBox(height: 24),
                //elevated button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.amber,
                    padding: EdgeInsets.all(24),
                  ),
                  onLongPress: () {
                    log("onLongPress");
                  },
                  onPressed: () {
                    log("data");
                  },
                  child: Text("ElevatedButton"),
                ),
                SizedBox(height: 24),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(width: 5, color: Colors.red),
                    foregroundColor: Colors.amber,
                    // backgroundColor: Colors.red,
                    padding: EdgeInsets.all(16),
                  ),
                  onLongPress: () {
                    log("onLongPress");
                  },
                  onPressed: () {
                    log("data");
                  },
                  child: Text("OutlinedButton"),
                ),
                SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    //call the fun
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.green),
                  child: Text("Text Button"),
                ),
                SizedBox(height: 24),

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, size: 35, color: Colors.grey),
                ),

                SizedBox(height: 24),

                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minWidth: 200,
                  height: 50,
                  child: Text("Material Button"),
                ),

                FloatingActionButton(
                  onPressed: () {},
                  tooltip: "Message",
                  child: Icon(Icons.chat),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
