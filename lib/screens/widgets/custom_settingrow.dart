// ignore_for_file: prefer_typing_uninitialized_variables

//import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

class SetRow extends StatelessWidget {
  const SetRow({super.key, this.icon, this.text, this.color});

  final text;
  final icon;
  final color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.Style16,
        ),
        Icon(
          icon,
          size: 55,
          
        ),
      ],
    );
  }
}
