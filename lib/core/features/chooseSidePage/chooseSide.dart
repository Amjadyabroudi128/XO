import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/components/choiceContainer.dart';
import 'package:tic_tac_toe/components/iconButton.dart';
import 'package:tic_tac_toe/components/sizedBox.dart';
import 'package:tic_tac_toe/constants/constants.dart';

import '../../../components/chooseSide.dart';
import '../../../components/padding.dart';
import '../GameScreen/GameScreen.dart';

class chooseSide extends StatefulWidget {
  static const String id = "chooseSide";
  const chooseSide({super.key});

  @override
  State<chooseSide> createState() => _chooseSideState();
}

class _chooseSideState extends State<chooseSide> {
  @override
  Widget build(BuildContext context) {
    String pickaSide = "choose a side";
    return  Scaffold(
      body: MyPadding(
        pad: const EdgeInsets.only(left: 17, top: 68),
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
                mySpace(width: 5,),
                Text( pickaSide, style: choose)
              ],
            ),
            tapX(),
            mySpace(height: 40),
            GestureDetector(
              onTap: () {
                pickSide(context, "O");
              },
              child: MyPadding(
                pad: const EdgeInsets.only(top: 20),
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
              pickSide(context, "X");
            },
            child: MyPadding(
              pad:  EdgeInsets.only(top: 80),
              child: _buildChoiceButton(FontAwesomeIcons.xmark),
            ),
          );
  }
}
Widget _buildChoiceButton(IconData symbol) {
  return buttonContainer(
    child: Center(
      child: FaIcon(
        symbol,
        color: choiceClr,
        size: icon190,
      )
    ),
  );
}
