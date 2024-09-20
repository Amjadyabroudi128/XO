import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/padding.dart';
import 'package:tic_tac_toe/components/mainMenu.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:zapx/zapx.dart';

class mainMenu extends StatelessWidget {
  const mainMenu({
    super.key,
  });
 final String menu = "MAIN MENU";
 final String startingPage = "startingPage";
  @override
  Widget build(BuildContext context) {

    return MyPadding(
      pad: const EdgeInsets.only(bottom: 83),
      child: menuButton(
          onPressed: (){
            Zap.toNamed(startingPage);
          },
          child: Text(menu, style: menuStyle)),
    );
  }
}