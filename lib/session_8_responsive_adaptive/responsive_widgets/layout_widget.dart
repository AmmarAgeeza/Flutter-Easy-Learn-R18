// import 'package:flutter/material.dart';

// class LayoutBuilderWidget extends StatelessWidget {
//   const LayoutBuilderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SizedBox(
//           width: 350,
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               print(constraints.maxWidth); // العرض المتاح عندي
//               if (constraints.maxWidth < 600) {
//                 return Mobilelayout();
//               } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
//                 return Tabletlayout();
//               } else {
//                 return Desktoplayout();
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Mobilelayout extends StatelessWidget {
//   const Mobilelayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Center(child: Text("Mobilelayout")));
//   }
// }

// class Tabletlayout extends StatelessWidget {
//   const Tabletlayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Center(child: Text("Tabletlayout")));
//   }
// }

// class Desktoplayout extends StatelessWidget {
//   const Desktoplayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Center(child: Text("Desktoplayout")));
//   }
// }
