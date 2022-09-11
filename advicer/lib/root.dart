import 'package:advicer/consts.dart';
import 'package:flutter/material.dart';

import 'presentation/advicer/adviver_page.dart';
import 'presentation/theme_anamition/theme_animation_page.dart';

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
        ThemeAnimationPage(
          headerText: 'Theme Mode Switch',
        ),
        AdviverPage(),
        ThemeAnimationPage(
          headerText: headerText,
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
        selectedItemColor: const Color.fromARGB(255, 251, 251, 250),
        // ignore: deprecated_member_use
        backgroundColor: Theme.of(context).appBarTheme.color,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.color_lens), label: "Theme Mode"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Advicer"),
        ],
      ),
    );
  }
}
