import 'dart:math';

import 'package:flutter/cupertino.dart';

class Student with ChangeNotifier {
  final String id;
  final String fullName;
  final String imageUrl;
  int powerCardNum;

  Student({
    required this.id,
    required this.fullName,
    this.imageUrl = "",
    this.powerCardNum = 0,
  });

  void increaseCard() {
    powerCardNum++;
    notifyListeners();
  }

  void decreaseCard() {
    powerCardNum = max(powerCardNum - 1, 0);
    notifyListeners();
  }
}
