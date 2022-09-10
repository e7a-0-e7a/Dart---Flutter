library colorUtils;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const barBackground = Color(0xff464747);
const primaryColor = Color(0xff252525);
const secondaryColor = Color(0xff7e7e7e);
const scaffoldColor = Colors.white;
const acceentColor = Colors.teal;

final materialThemeData = ThemeData(
  scaffoldBackgroundColor: scaffoldColor,
  appBarTheme: const AppBarTheme(color: barBackground),
  primaryColor: primaryColor,
  secondaryHeaderColor: secondaryColor,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: acceentColor),
);

const cupertinoTheme = CupertinoThemeData(
  primaryColor: primaryColor,
  barBackgroundColor: barBackground,
  primaryContrastingColor: acceentColor,
  scaffoldBackgroundColor: scaffoldColor,
);

const toolbarTextStyle = TextStyle(color: Colors.white, fontSize: 16.0);
const textStyleBlackPlain = TextStyle(color: Colors.black, fontSize: 30.0);
const bottomNavTextStyle = TextStyle(color: Colors.white, fontSize: 14.0);
const toolbarButtonTextStyle = TextStyle(color: Colors.white, fontSize: 14.0);
const tabsContentTextStyle = TextStyle(color: Colors.black, fontSize: 30.0);
