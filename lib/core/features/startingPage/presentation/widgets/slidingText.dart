import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class tic_tac_toe extends StatelessWidget {
  const tic_tac_toe({
    super.key,
    required this.textSlideAnimation,
    required this.textAnimation,
  });

  final Animation<Offset> textSlideAnimation;
  final Animation<double> textAnimation;

  @override
  Widget build(BuildContext context) {
    String ticTac = "TIC-TAC-TOE";
    return SlideTransition(
      position: textSlideAnimation,
      child: FadeTransition(
        opacity: textAnimation,
        child: Text(
          ticTac,
          style: slideText
        ),
      ),
    );
  }
}
