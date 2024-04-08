// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unnecessary_import

import 'dart:ffi';

import 'package:care_app_two/bar%20graph/bar_graph.dart';
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/reports/weekly_reports.dart';
import 'package:care_app_two/screens/widgets/custom_divider.dart';
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
                                  Icons.insert_chart_outlined_outlined,
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
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xffC2C2C2),
                                  )
                                ],
                              ),
                            ),
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
              SizedBox(
                height: 27.h,
              ),
              Container(
                width: 328.w,
                height: 187.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xfff6f6f6)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffD5E8FF),
                          child: Icon(
                            Icons.text_snippet_outlined,
                            color: Color(0xff0075FE),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Reports',
                          style: Styles.Style166,
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 7).r,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15).r,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Weekly Report',
                                    style: Styles.Style18.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '  View details',
                                        style: Styles.Style11.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return const WeeklyReport();
                                              },
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.arrow_right_alt,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 20.h,
                              thickness: 1,
                              color: Color(0xffC2C2C2),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15).r,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Monthly Report',
                                    style: Styles.Style18.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '  View details',
                                        style: Styles.Style11.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.arrow_right_alt,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
