import 'package:flutter/material.dart';

class gameBox extends StatelessWidget {
  final Widget Function(BuildContext, int) building;
  const gameBox({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 columns
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      itemCount: 9,
      itemBuilder: building,
    );
  }
}
