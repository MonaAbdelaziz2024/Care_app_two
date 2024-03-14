// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSquare extends StatelessWidget {
  const HomeSquare({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    this.onTap,
  });
  final icon;
  final String text;
  final color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90.w,
          height: 90.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, top: 10, bottom: 8).r,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon,
                        color: color,
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      text,
                      style: Styles.Style111,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      '  View details',
                      style: Styles.Style111,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
