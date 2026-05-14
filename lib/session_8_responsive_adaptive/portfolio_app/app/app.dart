import 'package:flutter/material.dart';

import '../screens/portofolio_screen.dart';

class MyPortofolioApp extends StatelessWidget {
  const MyPortofolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortofolioScreen(),
    );
  }
}
