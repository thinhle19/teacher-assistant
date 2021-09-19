import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teaching_assistant/providers/student.dart';
import 'package:teaching_assistant/widgets/student_item.dart';

class StudentOverviewScreen extends StatelessWidget {
  final studentList = [
    Student(
      id: "1",
      fullName: "Lê Huy Trường Giang",
      powerCardNum: 0,
    ),
    Student(
      id: "2",
      fullName: "Nguyễn Phi Vũ",
      powerCardNum: 0,
    ),
    Student(
      id: "3",
      fullName: "Nguyễn Huy Quân",
      powerCardNum: 0,
    ),
    Student(
      id: "4",
      fullName: "Phạm Công Nam Sơn",
      powerCardNum: 0,
    ),
    Student(
      id: "5",
      fullName: "Phạm Đức Hiệp",
      powerCardNum: 0,
    ),
    Student(
      id: "6",
      fullName: "Tạ Minh Huy",
      powerCardNum: 0,
    ),
    Student(
      id: "7",
      fullName: "Nguyễn Hoàng Cầm",
      powerCardNum: 0,
    ),
    Student(
      id: "8",
      fullName: "Nguyễn Hoàng Phúc",
      powerCardNum: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    studentList
        .sort((std1, std2) => -std1.powerCardNum.compareTo(std2.powerCardNum));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Power Card List"),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 20,
          mainAxisSpacing: 15,
        ),
        padding: const EdgeInsets.all(30),
        children: studentList
            .map(
              (student) => ChangeNotifierProvider(
                create: (_) => student,
                child: StudentItem(
                  fullName: student.fullName,
                  id: student.id,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
