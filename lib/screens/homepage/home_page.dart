// ignore_for_file: unused_local_variable

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
//import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
//import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const icon = CupertinoIcons.bell_fill;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: ''),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/images/person.png'),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      children: [
                        Text(
                          'Hello!',
                          style: Styles.Style10,
                        ),
                        Text(
                          'Ahmed Anwar',
                          style: Styles.Style133,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    const Text(
                      "car",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 49.07691955566406,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0075FE),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.asset(
                        kLogo,
                        scale: 2.5,
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    const Icon(Icons.notifications_none),
                  ],
                ),
                 SizedBox(
                  height: 13.h,
                ),
                Container(
                  height: 35.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xfff7f7f7),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search..',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff868484),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xff868484),
                        size: 18,
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25, left: 25),
                  height: 140.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff0074fe),
                  ),
                  child: const Center(
                      child: Column(
                    children: [
                      Text(
                        'Your Today’s tasks almost done ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Highlights',
                      style: Styles.Style18,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueGrey),
                    child: Row(
                      children: [
                        Container(
                         // padding: EdgeInsets.only(top: 5,bottom: 5),
                          width: 178.w,
                          height: 66.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xfff4f5f5),
                          ),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 70.97142791748047.w,
                                height: 66.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color(0xff0074fe)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
