import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class myIcons extends StatelessWidget {
  const myIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        close,
        circle,
      ],
    );
  }
}