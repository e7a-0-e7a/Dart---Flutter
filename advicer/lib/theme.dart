// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static const Color _lightTextPrimaryColor = Colors.black;
  static const Color _appBarColorlight = Color.fromARGB(255, 141, 46, 84);
  static const Color _accentColorlight = Color.fromARGB(255, 202, 88, 177);

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkOnPrimaryColor = Color.fromARGB(255, 146, 144, 174);
  static const Color _darkTextPrimaryColor = Colors.white;
  static const Color _appBarColordark = Color.fromARGB(255, 105, 0, 42);
  static const Color _accentColordark = Color.fromARGB(255, 85, 0, 62);

  static const Color _iconColor = Colors.white;

  static const TextStyle _lightHeadingText = TextStyle(
      color: _lightTextPrimaryColor,
      fontFamily: "JetBrains Mono",
      fontSize: 20,
      fontWeight: FontWeight.bold);

  static const TextStyle _lightBodyText = TextStyle(
      color: _lightTextPrimaryColor,
      fontFamily: "JetBrains Mono",
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 16);

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
    appBarTheme: const AppBarTheme(
      color: _appBarColorlight,
      iconTheme: IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _appBarColorlight,
    colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        secondary: _accentColorlight,
        primaryVariant: _lightPrimaryVariantColor),
    textTheme: _lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: _appBarColordark,
      iconTheme: IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _appBarColordark,
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      onPrimary: _darkOnPrimaryColor,
      secondary: _accentColordark,
      primaryVariant: _darkPrimaryVariantColor,
    ),
    textTheme: _darkTextTheme,
  );
}
