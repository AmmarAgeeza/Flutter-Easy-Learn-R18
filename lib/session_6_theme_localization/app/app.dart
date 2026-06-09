import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_widgets/l10n/app_localizations.dart';
import 'package:flutter_widgets/session_11_shared_prefs/core/database/cache_helper.dart';

import '../core/app_theme.dart';
import '../screens/easy_learn_screen.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key, required this.isDark, required this.isArabic});
  bool isDark,isArabic;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // bool isDark = CacheHelper.getBool(CacheHelperKeys.isDarkKey) ?? true;
  // bool isArabic = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: widget.isArabic ? Locale("ar") : Locale("en"),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],

      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: widget.isDark ? ThemeMode.dark : ThemeMode.light,
      home: EasyLearnScreen(
        isDark: widget.isDark,
        onChanged: (newValue) {
          CacheHelper.saveBool(CacheHelperKeys.isDarkKey, newValue);
          setState(() {
            widget.isDark = newValue;
          });
        },
        onLocalPress: () {
          setState(() {
            widget.isArabic = !widget.isArabic;
          });
          CacheHelper.saveBool(CacheHelperKeys.isArabicKey, widget.isArabic);
        },
      ),
    );
  }
}
