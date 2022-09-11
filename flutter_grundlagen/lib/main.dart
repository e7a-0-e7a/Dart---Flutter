import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/application/theme_service.dart';
import 'package:fluttergrundlagen/presentation/navigation_example_screens/screen_1.dart';
import 'package:fluttergrundlagen/presentation/navigation_example_screens/screen_2.dart';
import 'package:fluttergrundlagen/root.dart';
import 'package:fluttergrundlagen/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeService.isDark ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            routes: <String, WidgetBuilder>{
              "/root": (BuildContext context) => const RootWidget(),
              "/screen_1": (BuildContext context) =>
                  const Screen1(buttonText: "Go Back"),
              "/screen_2": (BuildContext context) =>
                  const Screen2(buttonText: "Go Back"),
            },
            home: const RootWidget());
      },
    );
  }
}
