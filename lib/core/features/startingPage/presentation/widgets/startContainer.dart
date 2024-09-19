import 'package:flutter/material.dart';
import 'package:zapx/zapx.dart';

import '../../../../../components/elevatedButton.dart';
import '../../../../../constants/constants.dart';
import '../../../chooseSidePage/chooseSide.dart';

class startContainer extends StatelessWidget {
  const startContainer({
    super.key,
    required this.start,
  });

  final String start;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: box,
      child: kElevatedButton(
        onPressed: (){
          Zap.toNamed(chooseSide.id);
        },
        child: Text(start, style: googleStyle,),
      ),
    );
  }
}