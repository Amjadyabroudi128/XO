import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? pad;
  const MyPadding({super.key, this.child, this.pad});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pad ?? EdgeInsets.all(8.0),
      child: child,
    );
  }
}
