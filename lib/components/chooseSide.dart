import 'package:flutter/material.dart';
import 'package:zapx/zapx.dart';
import '../core/features/GameScreen/GameScreen.dart';

void pickSide(BuildContext context, String selectedSide) {
  Zap.to(GameScreen(selectedSide: selectedSide));
}
