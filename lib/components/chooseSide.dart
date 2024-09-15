import 'package:flutter/material.dart';
import '../core/features/GameScreen/GameScreen.dart';

void pickSide(BuildContext context, String selectedSide) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => GameScreen(selectedSide: selectedSide),
    ),
  );
}
