import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool buttonValue = false;
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Center(
        child: PlatformSwitch(
          value: buttonValue,
          onChanged: (value) {
            buttonValue = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}

/* IOS Design (cross) -- install pubspec.yml flutter platform widgets

    (old Version -- without flutter platform widgets)
    return Scaffold(
      body: Center(
        child: Platform.isIOS
            ? CupertinoSwitch(
                value: buttonValue,
                onChanged: (value) {
                  buttonValue = value;
                  setState(() {});
                },
              )
            : Switch(
                value: buttonValue,
                onChanged: (value) {
                  buttonValue = value;
                  setState(() {});
                },
              ),
      ),
    );
*/