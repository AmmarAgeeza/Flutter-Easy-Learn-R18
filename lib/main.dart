import 'package:flutter/material.dart';

import 'session_10_image_picker_geolocation/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MaterialApp(home: ProfileScreen(), debugShowCheckedModeBanner: false),
  );
}
