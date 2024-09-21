import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/iconButton.dart';
import 'package:zapx/zapx.dart';

import '../../../../../constants/constants.dart';

class goback extends StatelessWidget {
  const goback({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return myButton(
      icon: goBack,
      onPressed: (){
        Zap.back();
      },
    );
  }
}
