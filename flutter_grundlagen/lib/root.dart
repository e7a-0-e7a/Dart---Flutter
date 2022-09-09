import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/counter_app/counter_app_page.dart';
import 'package:fluttergrundlagen/presentation/theme_anamition/theme_animation_page.dart';

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
      body: IndexedStack(index: _currentIndex, children: const [
        WidgetsExamplesPage(),
        CounterAppPage(),
        ThemeAnimationPage(
          headerText: 'Theme Mode Switch',
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber,
        backgroundColor: Theme.of(context).appBarTheme.color,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Start"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter"),
          BottomNavigationBarItem(
              icon: Icon(Icons.color_lens), label: "Theme Mode"),
        ],
      ),
    );
  }
}
