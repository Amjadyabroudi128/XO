import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/features/chooseSidePage/chooseSide.dart';
import 'package:tic_tac_toe/core/features/startingPage/startingPage.dart';
import 'package:tic_tac_toe/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startingPage(),
      theme: AppTheme.themeData,
      routes: {
        "startingPage": (context) => startingPage(),
        chooseSide.id: (context) => chooseSide()
      },
    );
  }
}

