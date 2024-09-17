import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../components/chooseSide.dart';
import '../../../../components/padding.dart';
import 'buildChoiceButton.dart';

tapO(BuildContext context) {
  return GestureDetector(
    onTap: () {
      pickSide(context, "O");
    },
    child: MyPadding(
      pad: const EdgeInsets.only(top: 20),
      child: buildChoiceButton(FontAwesomeIcons.o),
    ),
  );
}