import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDark = false;

  void toggleTheme() {
    this.isDark = !this.isDark;
    notifyListeners();
  }
}
