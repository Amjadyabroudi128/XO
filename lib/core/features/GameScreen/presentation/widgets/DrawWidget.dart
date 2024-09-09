import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String draw = "It's a Draw!";
    return  AlertDialog(
      icon: Center(child: frown),
      content: Text(draw, style: alertDialog),
    );
  }
}
