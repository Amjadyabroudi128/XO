import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/elevatedButton.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class gameOver extends StatelessWidget {
  final VoidCallback? onPressed;
  const gameOver({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: endBorder
      ),
      child: kElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: redShade
        ),
        onPressed: onPressed,
        child: Text("PLAY AGAIN", style: playAgain,),
      ),

    );
  }
}
