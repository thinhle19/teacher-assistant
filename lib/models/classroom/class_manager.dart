import 'package:flutter/cupertino.dart';
import 'package:teaching_assistant/models/classroom/lesson.dart';

class ClassManager with ChangeNotifier {
  final List<Lesson> lessonList = [];
  int currentSlot = 7;

  ClassManager();

  void createLesson(Lesson lesson) {
    lessonList.add(lesson);
    currentSlot++;
    // notifyListeners();
  }
}
