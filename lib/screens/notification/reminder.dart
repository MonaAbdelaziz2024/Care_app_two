import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReminderCard extends StatelessWidget {
  const ReminderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 166.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8).r,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 30.w,
                  height: 28.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90).r,
                  child: Center(
                    child: Text("Reminder",
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.w700)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16).r,
            child: Row(
              children: [
                Text("Panadol pill ",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 100).r,
                  child: Text("02:00 am",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff0075FE))),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 20, bottom: 16).r,
            child: Row(
              children: [
                Container(
                  width: 155.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      color: const Color(0xff6cd88a)),
                  child: Center(
                    child: Text("Done",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  width: 155.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      color: const Color(0xffd9d9d9)),
                  child: Center(
                    child: Text("Snooze",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
