import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xgen_machine_task/shared/app/constant/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      // dividerColor: kColorDark2,
      colorScheme: const ColorScheme.light(),
      // extensions: const <ThemeExtension<MyColorScheme>>[
      //   MyColorScheme.lightScheme,
      // ],
      appBarTheme: const AppBarTheme(
        backgroundColor: kWhite,
        iconTheme: CupertinoIconThemeData(),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith(
            (states) => Colors.green), //<-- SEE HERE
      ),
      scaffoldBackgroundColor: kWhite,
      textTheme: const TextTheme(),
      primaryTextTheme: const TextTheme(),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryColor,
      ),
      fontFamily: 'Manrope',
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      // dividerColor: kColorDark2,
      colorScheme: const ColorScheme.dark(),
      // extensions: const <ThemeExtension<MyColorScheme>>[
      //   MyColorScheme.darkScheme,
      // ],
      textTheme: const TextTheme(),
      primaryTextTheme: const TextTheme(),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: primaryColor),
      fontFamily: 'Manrope',
    );
  }
}
