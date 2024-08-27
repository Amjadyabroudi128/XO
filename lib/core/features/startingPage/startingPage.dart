import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/icons.dart';

class startingPage extends StatefulWidget {
  const startingPage({super.key});

  @override
  State<startingPage> createState() => _startingPageState();
}

class _startingPageState extends State<startingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body:  const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150, left: 70),
              child: myIcons(),
            )
          ],
        ),
      )
    );
  }
}

