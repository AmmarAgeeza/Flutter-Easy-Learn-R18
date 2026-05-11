import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_7_async_clock_app/clock_app/core/app_enums.dart';
import 'package:one_clock/one_clock.dart';

import '../core/app_conts.dart';
import '../widgets/my_drawer.dart';

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  ClockType selectedType = ClockType.analog;
  int x = 3;
  DateTime dateTime = DateTime.now();
  Widget getClock() {
    switch (selectedType) {
      case ClockType.analog:
        return AnalogClock(
          tickColor: clockColors[selectedIndex],
          isLive: true,
          width: 500,
          height: 500,
          datetime: dateTime,
        );
      case ClockType.digital:
        return DigitalClock(
          digitalClockTextColor: clockColors[selectedIndex],
          showSeconds: true,
          datetime: dateTime,
          textScaleFactor: 1.5,
          isLive: true,
        );
      case ClockType.text:
        return DigitalClock.light(
          format: "Hm",
          isLive: true,
          datetime: dateTime,
        );
    }
  }

  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(
        selectedType: selectedType,
        onChanged: (value) {
          setState(() {
            selectedType = value!;
          });
        },
        sectedIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Clock Screen')),
      body: Center(child: getClock()),
    );
  }
}
