import 'package:flutter/material.dart';

import '../../../../components/iconButton.dart';
import '../../../../constants/constants.dart';

backBtn(BuildContext context) {
  return myButton(
    icon: goBack,
    onPressed: (){
      Navigator.of(context).pop();
    },
  );
}