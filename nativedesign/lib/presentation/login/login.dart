import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nativedesign/theme.dart';
import 'package:nativedesign/utils.dart/constants.dart';

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
      //material: (_,__) => MaterialScaffoldData(),
      appBar: PlatformAppBar(
        title: const Text(
          "Native Design",
          style: toolbarTextStyle,
        ),
        cupertino: (_, __) => CupertinoNavigationBarData(
          transitionBetweenRoutes: false,
        ),
      ),
      body: ListView(
        children: [
          //Username
          Padding(
            padding: const EdgeInsets.only(
              top: padding_50,
              left: padding_20,
              right: padding_20,
            ),
            child: PlatformTextField(
              keyboardType: TextInputType.text,
              onChanged: (text) {},
              material: (_, __) => MaterialTextFieldData(
                decoration: const InputDecoration(
                  labelText: username,
                ),
              ),
              cupertino: (_, __) => CupertinoTextFieldData(
                placeholder: username,
              ),
            ),
          ),
          //Password
          Padding(
            padding: const EdgeInsets.all(padding_20),
            child: PlatformTextField(
              keyboardType: TextInputType.text,
              onChanged: (text) {},
              material: (_, __) => MaterialTextFieldData(
                decoration: const InputDecoration(
                  labelText: password,
                ),
                obscureText: true,
              ),
              cupertino: (_, __) => CupertinoTextFieldData(
                placeholder: password,
                obscureText: true,
              ),
            ),
          ),
        ],
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