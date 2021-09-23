import 'package:flutter/material.dart';

class StudentItem extends StatelessWidget {
  final String fullName;
  final String id;
  final int powerCardNum;

  StudentItem({
    required this.powerCardNum,
    required this.fullName,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        elevation: 7,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 20,
          ),
          child: Text(
            fullName,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              powerCardNum.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const Text(
              "Cards",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
