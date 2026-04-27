import 'dart:developer';

import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() {
    log("1.createState");
    return _CounterExampleState();
  }
}

class _CounterExampleState extends State<CounterExample> {
  int counter = 1;
  bool isFav = true;
  @override
  Widget build(BuildContext context) {
    log("build");
    return Scaffold(
      appBar: AppBar(title: Text('Counter Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(), style: TextStyle(fontSize: 35)),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                foregroundColor: Colors.blue,
                padding: EdgeInsets.all(24),
              ),
              onPressed: () {
                counter++;
                //calling set state
                setState(() {
                  log("setState");
                });
                log("$counter");
              },
              child: Text("Increment", style: TextStyle(fontSize: 35)),
            ),

            IconButton(
              onPressed: () {
                setState(() {
                  // isFav = isFav ? false : true;
                  isFav = !isFav;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: isFav ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    log("2.initState");
    super.initState();
  }
}
