import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final Widget? icon;
  final Text? text;
  final List<Widget>? actions;
  final Widget? myContext;
  const Alert({super.key, this.icon, this.text, this.actions, this.myContext});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: icon,
      content: myContext,
      actions: actions,
    );
  }
}
