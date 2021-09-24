import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:teaching_assistant/models/classroom/class_manager.dart';
import 'package:teaching_assistant/models/classroom/involve_history.dart';
import 'package:teaching_assistant/models/classroom/lesson.dart';
import 'package:teaching_assistant/provider/students_provider.dart';
import 'package:teaching_assistant/widgets/main_grid_view.dart';

class TeachingScreen extends StatelessWidget {
  static const String routeName = "/teaching";

  @override
  Widget build(BuildContext context) {
    ClassManager classManager =
        Provider.of<ClassManager>(context, listen: false);
    Lesson lesson = classManager.lessonList[classManager.lessonList.length - 1];
    StudentsProvider studentData = Provider.of<StudentsProvider>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ONL-C4K-GB87"),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
          ),
          onPressed: () {
            Navigator.of(context).pop(lesson.getTopStudentId());
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Slot num: " + classManager.currentSlot.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Text(
              "Time: " + DateFormat("dd-MM - hh:mm").format(lesson.date),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Expanded(
              child: MainGridView(
                children: lesson.involvedList
                    .map((involving) => ChangeNotifierProvider(
                          create: (ctx) => involving,
                          child: GridTile(
                            child: Card(
                              elevation: 7,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 40,
                                  horizontal: 20,
                                ),
                                child: Text(
                                  studentData.nameFromId(involving.id),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            footer: SizedBox(
                              height: 90,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      involving.decreasePoint();
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Consumer<InvolveHistory>(
                                    builder: (ctx, currenInvolve, _) => Text(
                                      currenInvolve.pointGot.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      involving.increasePoint();
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
