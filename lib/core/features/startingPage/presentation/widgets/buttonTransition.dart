import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/startButton.dart';

class startButtonTransition extends StatelessWidget {
  const startButtonTransition({
    super.key,
    required this.slideAnimation,
    required this.animation,
  });

  final Animation<Offset> slideAnimation;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: FadeTransition(
        opacity: animation,
        child: startButton(),  // Ensure this widget is correctly defined
      ),
    );
  }
}
