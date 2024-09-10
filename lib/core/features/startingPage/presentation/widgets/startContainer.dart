import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: startBorder
      ),
      child: kElevatedButton(
        onPressed: (){
          Navigator.of(context).pushNamed(chooseSide.id);
        },
        child: Text(start, style: googleStyle,),
      ),
    );
  }
}