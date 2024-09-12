import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/AlertDialog.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String draw = "It's a Draw!";
    return  Alert(
      icon: const Padding(
        padding: EdgeInsets.only(left: 70),
        child: frown,
      ),
      myContext:Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(draw, style: alertDialog),
    ),
    );
  }
}
