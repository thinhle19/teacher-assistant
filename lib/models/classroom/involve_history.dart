import 'package:flutter/foundation.dart';

class InvolveHistory with ChangeNotifier {
  String id;
  String studentId;
  DateTime date;
  int pointGot;
  int slotNum;

  InvolveHistory({
    required this.slotNum,
    required this.id,
    required this.studentId,
    required this.date,
    required this.pointGot,
  });

  void increasePoint() {
    pointGot++;
    notifyListeners();
  }

  void decreasePoint() {
    pointGot--;
    notifyListeners();
  }
}
