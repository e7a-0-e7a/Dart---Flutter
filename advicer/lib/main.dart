import 'package:advicer/application/advicer/advicer_bloc.dart';
import 'package:advicer/application/theme_service.dart';
import 'package:advicer/consts.dart';
import 'package:advicer/presentation/advicer/adviver_page.dart';
import 'package:advicer/root.dart';
import 'package:advicer/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          title: title,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeService.isDark ? ThemeMode.dark : ThemeMode.light,
          routes: <String, WidgetBuilder>{
            '/root': (BuildContext context) => const RootWidget(),
            '/adviser_page': (BuildContext context) => const AdviverPage(),
          },
          home: BlocProvider(
            //? MultiBlocProvider für mehrere Bloc´s
            create: (context) => AdvicerBloc(),
            child: const RootWidget(),
          ),
        );
      },
    );
  }
}
