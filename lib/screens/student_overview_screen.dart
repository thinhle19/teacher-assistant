import 'package:flutter/material.dart';
import 'package:teaching_assistant/models/user/student.dart';
import 'package:teaching_assistant/widgets/student_item.dart';

class StudentOverviewScreen extends StatelessWidget {
  final studentList = [
    Student(
      id: "1",
      fullName: "Lê Huy Trường Giang",
      powerCardNum: 0,
      involveList: [],
    ),
    Student(
      id: "2",
      fullName: "Nguyễn Phi Vũ",
      powerCardNum: 0,
      involveList: [],
    ),
    Student(
      id: "3",
      fullName: "Nguyễn Huy Quân",
      powerCardNum: 0,
      involveList: [],
    ),
    Student(
      id: "4",
      fullName: "Phạm Công Nam Sơn",
      powerCardNum: 0,
      involveList: [],
    ),
    Student(
      id: "5",
      fullName: "Phạm Đức Hiệp",
      powerCardNum: 0,
      involveList: [],
    ),
    Student(
      id: "6",
      fullName: "Tạ Minh Huy",
      powerCardNum: 0,
      involveList: [],
    ),
    Student(
      id: "7",
      fullName: "Nguyễn Hoàng Cầm",
      powerCardNum: 0,
      involveList: [],
    ),
    Student(
      id: "8",
      fullName: "Nguyễn Hoàng Phúc",
      powerCardNum: 0,
      involveList: [],
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Power Card List"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 20,
                )),
                fixedSize: MaterialStateProperty.all(const Size.fromWidth(500)),
              ),
              child: const Text("START CLASS!"),
            ),
          ),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 20,
                mainAxisSpacing: 15,
              ),
              padding: const EdgeInsets.all(30),
              children: studentList
                  .map(
                    (stu) => StudentItem(
                        powerCardNum: stu.powerCardNum,
                        fullName: stu.fullName,
                        id: stu.id),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
