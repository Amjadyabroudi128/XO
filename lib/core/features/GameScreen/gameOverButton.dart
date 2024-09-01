import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class gameOver extends StatelessWidget {
  final VoidCallback? onPressed;
  const gameOver({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: const Border(
            bottom: BorderSide(
                color: Colors.white,
                width: 5.7
            ),
            top: BorderSide(
                color: Colors.white,
                width: 2
            ),
            left:  BorderSide(
                color: Colors.white,
                width: 2
            ),
            right:  BorderSide(
                color: Colors.white,
                width: 2
            ),
          )
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red.withOpacity(0.4)
        ),
        onPressed: onPressed,
        child: Text("PLAY AGAIN"),
      ),
    );
  }
}
