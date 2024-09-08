import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      icon: Center(child: FaIcon(FontAwesomeIcons.faceFrownOpen,size: 90,)),
      content: Text("It's a draw!", style: alertDialog),
    );
  }
}
