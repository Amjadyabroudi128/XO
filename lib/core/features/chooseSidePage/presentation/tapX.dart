import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../components/chooseSide.dart';
import '../../../../components/padding.dart';
import 'buildChoiceButton.dart';

tapX(BuildContext context) {
  return GestureDetector(
    onTap: (){
      pickSide(context, "X");
    },
    child: MyPadding(
      pad:  EdgeInsets.only(top: 80),
      child: buildChoiceButton(FontAwesomeIcons.xmark),
    ),
  );
}