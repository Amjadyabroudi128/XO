import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class winWidget extends StatelessWidget {
  const winWidget({
    super.key,
    required this.currentPlayer,
  });

  final String currentPlayer;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: thumbsUp,
      content: Text("Player $currentPlayer wins!",),
      actions: [
      ],
    );
  }
}
