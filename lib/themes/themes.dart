

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class AppTheme {
  static final OutlinedBorder circle = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15));
  static final themeData = ThemeData().copyWith(
    scaffoldBackgroundColor: redShade,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: buttonSize,
        elevation: 8,
        backgroundColor: iconYellow,
        shape: circle,
      ),
    ),
    dialogBackgroundColor: Colors.transparent,
    dialogTheme: DialogTheme(
      iconColor: myWhite,
      contentTextStyle: win
    )
  );
 }