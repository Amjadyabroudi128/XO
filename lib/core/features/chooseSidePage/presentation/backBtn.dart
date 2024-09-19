import 'package:flutter/material.dart';
import 'package:zapx/zapx.dart';

import '../../../../components/iconButton.dart';
import '../../../../constants/constants.dart';

backBtn(BuildContext context) {
  return myButton(
    icon: goBack,
    onPressed: (){
      Zap.back();

    },
  );
}