import 'package:flutter/material.dart';

class currentPlayerText extends StatelessWidget {
  const currentPlayerText({
    super.key,
    required this.currentPlayer,
  });

  final String currentPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 180),
      child: Text("it's ${currentPlayer} Turn", style: TextStyle(fontSize: 35, color: Colors.white),),
    );
  }
}
