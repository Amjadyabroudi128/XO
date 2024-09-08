import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      icon: Center(child: frown),
      content: Text("It's a draw!", style: alertDialog),
    );
  }
}
