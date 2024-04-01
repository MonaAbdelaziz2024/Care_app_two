import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectCalendar extends StatelessWidget {
  const RectCalendar({super.key, this.icon, required this.text, required this.time});
final icon;
  final String text;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15).r,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: Colors.white,
          border: Border.all(
            color: Color(0xffF4F5F5),
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside,
            width: 3,
          ),
        ),
        child: Row(
          children: [
            Container(
              // padding: EdgeInsets.only(top: 5,bottom: 5),
              width: 178.w,
              height: 66.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: Color(0xffF4F5F5),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 206, 211, 211),
                    offset: Offset(1, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 66.w,
                    height: 66.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: Color(0xff0074fe),
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(text,
                            style: Styles.Style13.copyWith(
                                color: Color(0xff1F1F1F))),
                        Text(
                          time,
                          style: Styles.Style133.copyWith(
                                color: Color(0xff0075FE)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );;
  }
}