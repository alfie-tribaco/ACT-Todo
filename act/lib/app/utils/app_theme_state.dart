import 'package:flutter/material.dart';

class AppThemeState with ChangeNotifier {
  bool isDark = false;
  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
