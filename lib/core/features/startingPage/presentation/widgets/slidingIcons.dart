import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/padding.dart';

import 'icons.dart';

class slidingIcons extends StatelessWidget {
  const slidingIcons({
    super.key,
    required this.iconsSlideAnimation,
    required this.iconsAnimation,
  });

  final Animation<Offset> iconsSlideAnimation;
  final Animation<double> iconsAnimation;

  @override
  Widget build(BuildContext context) {
    double topPad = 120;
    double lefPad = 70;
    return MyPadding(
      pad:  EdgeInsets.only(top: topPad, left: lefPad),
      child: SlideTransition(
        position: iconsSlideAnimation,
        child: FadeTransition(
          opacity: iconsAnimation,
          child: myIcons(),  // Ensure this widget is correctly defined
        ),
      ),
    );
  }
}
