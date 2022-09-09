import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static const Color _lightTextPrimaryColor = Colors.black;
  static final Color _appBarColorlight = Color.fromARGB(255, 104, 8, 1);

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static final Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Color.fromARGB(255, 146, 144, 174);
  static const Color _darkTextPrimaryColor = Colors.white;
  static final Color _appBarColordark = Color.fromARGB(255, 104, 8, 1);

  static const Color _iconColor = Colors.white;
  static const TextStyle _lightHeadingText =
      TextStyle(color: _lightTextPrimaryColor, fontFamily: "JetBrains Mono");
  static const TextStyle _lightBodyText = TextStyle(
      color: _lightTextPrimaryColor,
      fontFamily: "JetBrains Mono",
      fontStyle: FontStyle.italic);
  static const TextTheme _lightTextTheme = TextTheme(
    headline1: _lightHeadingText,
    bodyText1: _lightBodyText,
  );

  static final TextStyle _darkHeadingText =
      _lightHeadingText.copyWith(color: _darkTextPrimaryColor);
  static final TextStyle _darkBodyText =
      _lightBodyText.copyWith(color: _darkTextPrimaryColor);
  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkHeadingText,
    bodyText1: _darkBodyText,
  );

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appBarColorlight,
      iconTheme: const IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _appBarColorlight,
    colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        primaryVariant: _lightPrimaryVariantColor),
    textTheme: _lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appBarColordark,
      iconTheme: const IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _appBarColordark,
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      onPrimary: _darkOnPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
    ),
    textTheme: _darkTextTheme,
  );
}
