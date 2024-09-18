import 'package:flutter/material.dart';

import '../../../../../components/sizedBox.dart';
import '../../../../../constants/constants.dart';
import 'goBack.dart';

class appBarText extends StatelessWidget {
  const appBarText({
    super.key,
    required this.ticTAc,
  });

  final String ticTAc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        goback(),
        mySpace(width: 20,),
        Text(ticTAc, style: slideText),
      ],
    );
  }
}
