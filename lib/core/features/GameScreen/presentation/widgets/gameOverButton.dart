import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/elevatedButton.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class gameOver extends StatelessWidget {
  final VoidCallback? onPressed;
  const gameOver({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    String again = "PLAY AGAIN";
    return Container(
      decoration: box,
      child: kElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: redShade
        ),
        onPressed: onPressed,
        child: Text(again, style: playAgain,),
      ),

    );
  }
}
