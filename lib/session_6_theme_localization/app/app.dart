import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_widgets/l10n/app_localizations.dart';

import '../core/app_theme.dart';
import '../screens/easy_learn_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = true;
  bool isArabic = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: isArabic ? Locale("ar") : Locale("en"),
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
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: EasyLearnScreen(
        isDark: isDark,
        onChanged: (newValue) {
          setState(() {
            isDark = newValue;
          });
        }, onLocalPress: () { 
        setState(() {
          isArabic=!isArabic;
        });
         },
      ),
    );
  }
}
