import 'package:flutter/material.dart';

import '../constants/constants.dart';

buildBoxDecoration(int index) {
  return BoxDecoration(
    color: redShade, // Red background color
    border: Border(
      top: BorderSide(
        color: myWhite,
        width: index > 2 ? 2 : 0, // Top line for rows 2 and 3
      ),
      left: BorderSide(
        color: myWhite,
        width: index % 3 != 0 ? 2 : 0, // Left line for columns 2 and 3
      ),
      right: BorderSide(
        color: myWhite,
        width: (index + 1) % 3 != 0 ? 2 : 0, // Right line for columns 1 and 2
      ),
      bottom: BorderSide(
        color: myWhite,
        width: index < 6 ? 2 : 0, // Bottom line for rows 1 and 2
      ),
    ),
  );
}