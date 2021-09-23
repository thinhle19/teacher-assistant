import 'package:flutter/cupertino.dart';
import 'package:teaching_assistant/models/classroom/involve_history.dart';

import 'user.dart';

class Student extends User {
  int powerCardNum;
  List<InvolveHistory> involveList;

  Student({
    required this.powerCardNum,
    required this.involveList,
    required fullName,
    required id,
  }) : super(fullName: fullName, id: id);
}
