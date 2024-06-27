// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/notification/reminder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: Color(0xffC2C2C2), width: 1)),
          //surfaceTintColor: Color(0xffC2C2C2),
          title: Title(
              color: Color(0xff000000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification'),
                  Image.asset(
                    kLogo,
                    scale: 1.5,
                  ),
                ],
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 35, left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.brightness_1,
                    color: Color(0xff0075FE),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Heart doctor appointment',
                    style: Styles.Style133,
                  )
                ],
              )
          //  ,ReminderCard(),
            ],
          ),
        ));
  }
}
