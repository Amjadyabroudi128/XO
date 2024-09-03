 import 'package:flutter/material.dart';

void alertTimer (BuildContext context) {
   Future.delayed(const Duration(seconds: 3), () {
     Navigator.of(context).pop(true);
   });
 }