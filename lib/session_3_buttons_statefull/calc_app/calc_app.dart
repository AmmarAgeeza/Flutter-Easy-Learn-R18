import 'package:flutter/material.dart';

import 'number_component.dart';
import 'opertaion_button.dart';
import 'result_component.dart';

//3 5 
class CalcApp extends StatefulWidget {
  const CalcApp({super.key});

  @override
  State<CalcApp> createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  int num1 = 0;
  int num2 = 0;
  int result = 0;
  List<int> history = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                num1 = 0;
                num2 = 0;
                result = 0;
                setState(() {});
              },
              child: Icon(Icons.clear),
            ),
            SizedBox(width: 24),
            FloatingActionButton(
              onPressed: () {
                int lastItem = history.removeLast();
                result = lastItem;

                setState(() {});
              },
              child: Icon(Icons.undo),
            ),
          ],
        ),
        appBar: AppBar(title: Text('CalcApp')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                // num component row
                Row(
                  children: [
                    //num1
                    NumberComponet(
                      num: num1,
                      add: () {
                        setState(() {
                          num1++;
                        });
                      },
                      minius: () {
                        setState(() {
                          num1--;
                        });
                      },
                    ),
                    Spacer(),
                    //num2
                    NumberComponet(
                      num: num2,
                      add: () {
                        setState(() {
                          num2++;
                        });
                      },
                      minius: () {
                        setState(() {
                          num2--;
                        });
                      },
                    ),
                  ],
                ),

                // buttons
                // add
                OperationButton(
                  title: "Add(+)",
                  onpressed: () {
                    history.add(result);
                    result = num1 + num2;
                    setState(() {});
                  },
                ),
                // sub
                OperationButton(
                  title: "Sub(-)",
                  onpressed: () {
                    result = num1 - num2;
                    setState(() {});
                  },
                ),
                // mul
                OperationButton(
                  title: "Mul(*)",
                  onpressed: () {
                    result = num1 * num2;
                    setState(() {});
                  },
                ),

                // di
                // mod
                //res
                ResultComponet(result: result),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
