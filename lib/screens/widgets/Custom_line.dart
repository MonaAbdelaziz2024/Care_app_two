
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff022B3A),
              ),
              height: 1,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'or',
          style: Styles.Style11,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff022B3A),
              ),
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}
