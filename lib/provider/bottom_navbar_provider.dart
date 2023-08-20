import 'package:flutter/material.dart';

class BottomNavbarProvider extends ChangeNotifier {
  int currentIndex = 0;

  void selectedPage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
