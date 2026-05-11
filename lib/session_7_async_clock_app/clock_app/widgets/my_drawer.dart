import 'package:flutter/material.dart';

import '../core/app_conts.dart';
import '../core/app_enums.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.selectedType,
    required this.onChanged,
    required this.sectedIndex, this.onTap,
  });
  final ClockType selectedType;
  final ValueChanged<ClockType?> onChanged;
  final int sectedIndex;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //header
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: ListTile(leading: Icon(Icons.abc), title: Text("Settings")),
          ),
          //clock type
          ListTile(leading: Icon(Icons.abc), title: Text("Clock Type")),
          //options
          RadioGroup(
            groupValue: selectedType,
            onChanged: onChanged,
            child: Column(
              children: [
                RadioListTile(value: ClockType.analog, title: Text("Analog")),
                RadioListTile(value: ClockType.digital, title: Text("Digital")),
                RadioListTile(value: ClockType.text, title: Text("Text")),
              ],
            ),
          ),

          // clock size
          // clock color
          ListTile(leading: Icon(Icons.abc), title: Text("Clock color")),
          Row(
            children: List.generate(clockColors.length, (index) {
              return GestureDetector(
                onTap: (){
                onTap?.call(index);},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: sectedIndex == index
                        ? Border.all(width: 5, color: Colors.black)
                        : null,
                    color: clockColors[index],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
