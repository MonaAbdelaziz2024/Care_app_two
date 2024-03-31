// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

class SetRow extends StatelessWidget {
  const SetRow({super.key, this.icon, this.text});

  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 9, right: 22, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text,
            style: Styles.Style16,
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
