import 'package:flutter/material.dart';

class MainGridView extends StatelessWidget {
  MainGridView({
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 20,
        mainAxisSpacing: 15,
      ),
      padding: const EdgeInsets.all(30),
      children: children,
    );
  }
}
