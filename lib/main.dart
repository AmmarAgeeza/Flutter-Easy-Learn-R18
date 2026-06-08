import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_11_shared_prefs/screens/profile_screen.dart';
import 'package:flutter_widgets/session_6_theme_localization/app/app.dart';

void main() async {
  runApp(
    // const MyApp(),
    const MaterialApp(
      home: ProfileSetupScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
