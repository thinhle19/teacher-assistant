import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:teaching_assistant/models/classroom/involve_history.dart';

class Lesson with ChangeNotifier {
  final String id;
  final DateTime date;
  String topStudentId;
  final List<InvolveHistory> involvedList;

  Lesson({
    required this.id,
    required this.date,
    required this.topStudentId,
    required this.involvedList,
  });

  String getTopStudentId() {
    int max = -1;
    String maxId = "";
    involvedList.forEach((involve) {
      if (max < involve.pointGot) {
        max = involve.pointGot;
        maxId = involve.studentId;
      }
    });
    topStudentId = maxId;
    return maxId;
  }
}
