import 'dart:math';

import 'package:flutter/material.dart';

class Fourtunemodel with ChangeNotifier {
  String _currentFortune = "";
  final fortuneList = [
    "You will have a great day!",
    "Good things are coming your way.",
    "You will find happiness in unexpected places.",
    "Your hard work will pay off soon.",
    "A new opportunity is on the horizon.",
  ];
  String get currentFortune => _currentFortune;

  Fourtunemodel() {
    _generateRandomFortune();
  }

  void _generateRandomFortune() {
    var random = Random();
    int fortuneIndex = random.nextInt(fortuneList.length);
    _currentFortune = fortuneList[fortuneIndex];
    notifyListeners();
  }

  //method to get a new random fortune
  void getNewFortune() {
    _generateRandomFortune();
  }
}
