import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final Widget? icon;
  final Text? text;
  final List<Widget>? actions;
  const Alert({super.key, this.icon, this.text, this.actions});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: icon,
      content: text,
      actions: actions,
    );
  }
}
