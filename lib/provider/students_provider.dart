import 'package:flutter/cupertino.dart';
import 'package:teaching_assistant/models/user/student.dart';

class StudentsProvider with ChangeNotifier {
  final studentList = [
    Student(
      id: "1",
      fullName: "Lê Huy Trường Giang",
      powerCardNum: 2,
    ),
    Student(
      id: "2",
      fullName: "Nguyễn Phi Vũ",
      powerCardNum: 3,
    ),
    Student(
      id: "3",
      fullName: "Nguyễn Huy Quân",
      powerCardNum: 1,
    ),
    Student(
      id: "4",
      fullName: "Phạm Công Nam Sơn",
      powerCardNum: 1,
    ),
    Student(
      id: "5",
      fullName: "Phạm Đức Hiệp",
      powerCardNum: 4,
    ),
    Student(
      id: "6",
      fullName: "Tạ Minh Huy",
      powerCardNum: 1,
    ),
    Student(
      id: "7",
      fullName: "Nguyễn Hoàng Cầm",
      powerCardNum: 1,
    ),
    Student(
      id: "8",
      fullName: "Nguyễn Hoàng Phúc",
      powerCardNum: 1,
    ),
  ];

  void sortByCardNum() {
    studentList.sort((a, b) => -a.powerCardNum.compareTo(b.powerCardNum));
    notifyListeners();
  }

  String nameFromId(String id) {
    return studentList.firstWhere((element) => element.id == id).fullName;
  }

  void updateCardOf(String id, int numChanged) {
    studentList
        .firstWhere((element) => element.id == id)
        .updateCardNum(numChanged);
    notifyListeners();
  }
}
