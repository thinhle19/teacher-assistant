import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teaching_assistant/models/classroom/lesson.dart';
import 'package:teaching_assistant/provider/students_provider.dart';
import 'package:teaching_assistant/screens/student_overview_screen.dart';
import 'package:teaching_assistant/screens/teaching_screen.dart';

import 'models/classroom/class_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => StudentsProvider(),
        ),
        ListenableProvider(create: (ctx) => ClassManager()),
        // Provider(create: (ctx)=> Lesson(id: id, date: date, topStudentId: topStudentId, involvedList: involvedList))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Raleway",
        ),
        home: StudentOverviewScreen(),
        routes: {
          TeachingScreen.routeName: (ctx) => TeachingScreen(),
        },
      ),
    );
  }
}
