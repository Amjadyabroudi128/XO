import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../components/choiceContainer.dart';
import '../../../constants/constants.dart';

Widget buildChoiceButton(IconData symbol) {
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
