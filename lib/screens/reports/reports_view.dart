// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:care_app_two/bar%20graph/bar_graph.dart';
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportsView extends StatefulWidget {
  const ReportsView({super.key});

  @override
  State<ReportsView> createState() => _ReportsViewState();
}

class _ReportsViewState extends State<ReportsView> {
  List<double> weeklySummary = [25, 60, 79, 50, 59, 80, 100, 90, 90, 55, 40];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbar(context, 'Reports'),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(
                height: 78.h,
              ),
              Container(
                width: 328.w,
                height: 329.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xfff6f6f6)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffD5E8FF),
                                child: Icon(
                                  Icons.calendar_month_outlined,
                                  color: Color(0xff0075FE),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Analysis',
                                style: Styles.Style166,
                              ),
                            ],
                          ),

                          /* SizedBox(
                            width: 46.w,
                          ),*/
                          Container(
                            width: 148,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC2C2C2)),
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xfffdfdff)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 230.h,
                        child: BarGraph(
                          weeklySummary: weeklySummary,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
