import 'package:teaching_assistant/models/classroom/involve_history.dart';

import 'user.dart';

class Student extends User {
  int powerCardNum;
  List<InvolveHistory> involveList = [];

  Student({
    required this.powerCardNum,
    required fullName,
    required id,
  }) : super(fullName: fullName, id: id);

  InvolveHistory addInvolved(int slotNum, DateTime date) {
    return InvolveHistory(
      slotNum: slotNum,
      id: id,
      studentId: id,
      date: date,
      pointGot: 0,
    );
  }

  void updateCardNum(int numChanged) {
    powerCardNum += numChanged;
  }
}
