import 'package:flutter/material.dart';

import '../constants/constants.dart';

class buttonContainer extends StatelessWidget {
  final Widget? child;
  const buttonContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cWidth,
      height: cHeight,
      decoration: choices,
      child: child,
    );
  }
}
