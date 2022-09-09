import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/navigation_example_screens/screen_1.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/navigation_example_screens/screen_2.dart';
import 'package:fluttergrundlagen/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/root": (BuildContext context) => const RootWidget(),
          "/screen_1": (BuildContext context) =>
              const Screen1(buttonText: "Go Back"),
          "/screen_2": (BuildContext context) =>
              const Screen2(buttonText: "Go Back"),
        },
        home: const RootWidget());
  }
}
