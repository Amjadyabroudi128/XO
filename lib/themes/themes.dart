

 import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class AppTheme {

  static final themeData = ThemeData().copyWith(
    scaffoldBackgroundColor: redShade,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(240, 68),
        elevation: 8,
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15) // Make the corners square
        ),
      ),
    ),

  );
 }