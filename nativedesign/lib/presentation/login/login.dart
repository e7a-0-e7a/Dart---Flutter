import 'dart:io';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nativedesign/presentation/home/homePage.dart';
import 'package:nativedesign/theme.dart';
import 'package:nativedesign/utils.dart/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool buttonValue = false;
  String switchText = "Don't ";
  String userNameEntered = "";
  String passwordEntered = "";

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
              onChanged: (text) {
                userNameEntered = text;
              },
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
              onChanged: (text) {
                passwordEntered = text;
              },
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
          // Switch
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(padding_20),
                child: PlatformSwitch(
                  value: buttonValue,
                  onChanged: (value) {
                    setState(
                      () {
                        buttonValue = value;
                        if (value) {
                          switchText = "Yes, ";
                        } else {
                          switchText = "Don't ";
                        }
                      },
                    );
                  },
                ),
              ),
              Text(
                switchText + remember,
                style: defaultTextStyleDark,
              ),
            ],
          ),
          // Button
          Padding(
            padding: const EdgeInsets.all(padding_20),
            child: PlatformElevatedButton(
              onPressed: () {
                if (userNameEntered.isEmpty || passwordEntered.isEmpty) {
                  showAlert(unPwdError);
                } else {
                  Navigator.pushReplacement(
                    context,
                    platformPageRoute(
                      context: context,
                      builder: (context) => const HomePage(),
                    ),
                  );
                }
              },
              child: const Text(
                login,
                style: defaultTextStylelight,
              ),
              material: (_, __) => MaterialElevatedButtonData(),
              cupertino: (_, __) => CupertinoElevatedButtonData(),
            ),
          ),
        ],
      ),
    );
  }

  void showAlert(String message) {
    showPlatformDialog(
      context: context,
      builder: (_) {
        return PlatformAlertDialog(
          title: const Text(alert),
          content: Text(message),
          actions: [
            PlatformDialogAction(
              child: const Text(ok),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
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
}
