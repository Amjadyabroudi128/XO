import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/padding.dart';
import 'package:tic_tac_toe/components/mainMenu.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class mainMenu extends StatelessWidget {
  const mainMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String menu = "MAIN MENU";
    return MyPadding(
      pad: const EdgeInsets.only(bottom: 83),
      child: menuButton(
          onPressed: (){
            Navigator.of(context).pushNamed("startingPage");
          },
          child: Text(menu, style: menuStyle)),
    );
  }
}