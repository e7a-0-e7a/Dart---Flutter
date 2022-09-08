import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/counter_app_page.dart';

import 'presentation/widgets_examples/widgeds_examples_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: _currentIndex,
          children: const [WidgetsExamplesPage(), CounterAppPage()]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber,
        backgroundColor: const Color.fromARGB(255, 75, 6, 1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.swipe), label: "examplePage"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "counterApp"),
        ],
      ),
    );
  }
}
