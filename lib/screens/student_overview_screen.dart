import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teaching_assistant/models/classroom/class_manager.dart';
import 'package:teaching_assistant/models/classroom/involve_history.dart';
import 'package:teaching_assistant/models/classroom/lesson.dart';
import 'package:teaching_assistant/provider/students_provider.dart';
import 'package:teaching_assistant/screens/teaching_screen.dart';
import 'package:teaching_assistant/widgets/main_grid_view.dart';
import 'package:teaching_assistant/widgets/student_item.dart';

class StudentOverviewScreen extends StatelessWidget {
  void startClassCallback(BuildContext context) {
    StudentsProvider studentData = Provider.of<StudentsProvider>(
      context,
      listen: false,
    );
    List<InvolveHistory> involvedSessions = [];

    studentData.studentList.forEach((stud) {
      involvedSessions.add(stud.addInvolved(8, DateTime.now()));
    });

    Lesson lesson = Lesson(
      id: DateTime.now().toString(),
      date: DateTime.now(),
      topStudentId: "",
      involvedList: involvedSessions,
    );

    Provider.of<ClassManager>(context, listen: false).createLesson(lesson);
    Navigator.of(context).pushNamed(TeachingScreen.routeName).then(
          (value) => studentData.updateCardOf(value as String, 1),
        );
  }

  Widget build(BuildContext context) {
    StudentsProvider studentData = Provider.of<StudentsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Power Card List"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                studentData.sortByCardNum();
              },
              icon: const Icon(Icons.sort)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
            child: ElevatedButton(
              onPressed: () {
                startClassCallback(context);
              },
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 20,
                )),
                fixedSize: MaterialStateProperty.all(const Size.fromWidth(400)),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
              ),
              child: const Text("START CLASS!"),
            ),
          ),
          Expanded(
            child: MainGridView(
              children: studentData.studentList
                  .map(
                    (stud) => StudentItem(
                        powerCardNum: stud.powerCardNum,
                        fullName: stud.fullName,
                        id: stud.id),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
