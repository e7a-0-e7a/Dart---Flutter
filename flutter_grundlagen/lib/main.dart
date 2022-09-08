import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/counter_app_page.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgeds_examples_page.dart';
import 'package:fluttergrundlagen/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: RootWidget());
  }
}
