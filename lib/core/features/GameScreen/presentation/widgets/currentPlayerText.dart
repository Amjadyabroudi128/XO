import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/padding.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class currentPlayerText extends StatelessWidget {
  const currentPlayerText({
    super.key,
    required this.currentPlayer,
  });

  final String currentPlayer;

  @override
  Widget build(BuildContext context) {
    String playersTurn = "it's ${currentPlayer} Turn";
    return MyPadding(
      pad: EdgeInsets.only(bottom: 180),
      child: Text(playersTurn, style: player,),
    );
  }
}
