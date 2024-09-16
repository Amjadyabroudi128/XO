import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/components/choiceContainer.dart';
import 'package:tic_tac_toe/components/iconButton.dart';
import 'package:tic_tac_toe/components/sizedBox.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:tic_tac_toe/core/features/chooseSidePage/tapX.dart';

import '../../../components/chooseSide.dart';
import '../../../components/padding.dart';
import '../GameScreen/GameScreen.dart';
import 'buildChoiceButton.dart';

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
            tapX(context),
            mySpace(height: 40),
            GestureDetector(
              onTap: () {
                pickSide(context, "O");
              },
              child: MyPadding(
                pad: const EdgeInsets.only(top: 20),
                child: buildChoiceButton(FontAwesomeIcons.o),
              ),
            ),
          ],
        ),
      )
    );
  }

}
