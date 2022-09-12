import 'package:advicer/application/theme_service.dart';
import 'package:advicer/consts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            size: 40,
            color: themeService.isDark
                ? Colors.redAccent
                : const Color.fromARGB(255, 133, 10, 1),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            errors,
            style: themeData.textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ],
      );
    });
  }
}
