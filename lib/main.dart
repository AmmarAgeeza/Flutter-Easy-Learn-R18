import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_11_shared_prefs/core/database/cache_helper.dart';
import 'package:flutter_widgets/session_11_shared_prefs/screens/profile_screen.dart';
import 'package:flutter_widgets/session_6_theme_localization/app/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  bool isDark = await CacheHelper.getBool(CacheHelperKeys.isDarkKey) ?? true;
  bool isArabic = await CacheHelper.getBool(CacheHelperKeys.isArabicKey) ?? false;
  runApp(
    MyApp(isDark: isDark, isArabic: isArabic),
    // const MaterialApp(
    //   home: ProfileSetupScreen(),
    //   debugShowCheckedModeBanner: false,
    // ),
  );
}
