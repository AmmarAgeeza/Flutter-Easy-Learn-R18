import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_size.dart';

// class AppTheme {
//   ThemeData themeData = ThemeData(
//     listTileTheme: ListTileThemeData(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//     ),
//     appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0cc0df)),
//     scaffoldBackgroundColor: Color(0xFF131629),
//     // fontFamily: "DancingScript",
//     textTheme: TextTheme(
//       bodyLarge: TextStyle(
//         color: Colors.green,
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//       ),
//       bodyMedium: TextStyle(color: Color.fromARGB(255, 103, 70, 70)),
//     ),
//   );
// }


class AppTheme {
  ThemeData lightTheme = ThemeData(
      listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
    primaryColor: AppColors.primaryColor,
    cardColor: AppColors.secondaryColor,
    iconTheme: IconThemeData(color: AppColors.textColor, size: 30),
    scaffoldBackgroundColor: AppColors.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.secondaryColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.textColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: AppColors.textColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.textColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(color: AppColors.subTextColor, fontSize: 12),
    ),
  );


  ThemeData darkTheme = ThemeData(
      listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
    primaryColor: AppColors.darkPrimaryColor,
    cardColor: AppColors.darkSecondaryColor,
    iconTheme: IconThemeData(color: AppColors.darkTextColor, size: AppSize.s30),
    scaffoldBackgroundColor: AppColors.darkPrimaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkSecondaryColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.darkTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: AppColors.darkTextColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.darkTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(color: AppColors.darkSubTextColor, fontSize: 12),
    ),
  );
}
