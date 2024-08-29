import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return SlideTransition(
      position: textSlideAnimation,
      child: FadeTransition(
        opacity: textAnimation,
        child: Text(
          "TIC-TAC-TOE",
          style: GoogleFonts.archivoBlack(
            fontSize: 35,
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}
