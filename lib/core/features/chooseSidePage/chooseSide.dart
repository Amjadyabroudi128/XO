import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/components/iconButton.dart';
import 'package:tic_tac_toe/constants/constants.dart';

import '../GameScreen/GameScreen.dart';

class chooseSide extends StatefulWidget {
  static const String id = "chooseSide";
  const chooseSide({super.key});

  @override
  State<chooseSide> createState() => _chooseSideState();
}

class _chooseSideState extends State<chooseSide> {
  void chooseSide(String selectedSide) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GameScreen(selectedSide: selectedSide),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 17, top: 68),
        child: Column(
          children: [
            Row(
              children: [
                myButton(
                  icon: goBack,
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(width: 5,),
                Text("Choose a Side", style: choose)
              ],
            ),
            tapX(),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                chooseSide("O");
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: _buildChoiceButton(FontAwesomeIcons.o),
              ),
            ),
          ],
        ),
      )
    );
  }

  GestureDetector tapX() {
    return GestureDetector(
            onTap: (){
              chooseSide("X");
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: _buildChoiceButton(FontAwesomeIcons.xmark),
            ),
          );
  }
}
Widget _buildChoiceButton(IconData symbol) {
  return Container(
    width: 220,
    height: 220,
    decoration: BoxDecoration(
      color: Colors.yellow[600],
      borderRadius: BorderRadius.circular(19),
      border: const Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 5.7
        ),
        top: BorderSide(
          color: Colors.black,
          width: 3
        ),
        left:  BorderSide(
            color: Colors.black,
            width: 3
        ),
        right:  BorderSide(
            color: Colors.black,
            width: 3
        ),
      )
    ),
    child: Center(
      child: FaIcon(
        symbol,
        color: Colors.red,
        size: 190,
      )
    ),
  );
}
