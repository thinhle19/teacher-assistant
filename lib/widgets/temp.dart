// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:teaching_assistant/models/user/student.dart';

// class StudentItem extends StatelessWidget {
//   final String fullName;
//   final String id;

//   StudentItem({
//     required this.fullName,
//     required this.id,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final student = Provider.of<Student>(context);

//     return GridTile(
//       child: Card(
//         elevation: 7,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 10,
//             horizontal: 10,
//           ),
//           child: Text(
//             fullName,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//       ),
//       footer: SizedBox(
//         height: 80,
//         width: double.infinity,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               onPressed: () {
//                 student.decreaseCard();
//               },
//               icon: const Icon(
//                 Icons.remove,
//                 color: Colors.red,
//               ),
//             ),
//             Text(
//               student.powerCardNum.toString(),
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 40,
//               ),
//             ),
//             IconButton(
//               onPressed: () {
//                 student.increaseCard();
//               },
//               icon: const Icon(
//                 Icons.add,
//                 color: Colors.green,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
