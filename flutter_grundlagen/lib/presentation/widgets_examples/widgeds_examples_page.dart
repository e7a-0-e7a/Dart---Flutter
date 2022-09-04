import 'package:flutter/material.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
        appBar: AppBar(
          leading: const Icon(Icons.home_sharp),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 75, 6, 1),
          titleTextStyle: const TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "JetBrains Mono",
              fontStyle: FontStyle.normal,
              letterSpacing: 3),
          title: const Text("Rhavens Bubble"),
        ),
        body: const Placeholder());
  }
}
