// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/widgets/custom_home_rec.dart';
//import 'package:care_app_two/screens/widgets/custom_button.dart';
//import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
//import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
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
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: ListView(
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
                    boxShadow: [BoxShadow(
                       color: Color.fromARGB(255, 206, 211, 211),
                    offset: Offset(1, 2),
                    )]
                  ),
                  padding: const EdgeInsets.all(10).r,
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
                  padding: const EdgeInsets.only(top: 25, left: 25).r,
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
                        ),
                      ],
                    ),
                  ),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      'Highlights',
                      style: Styles.Style18,
                    ),
                  ],
                ),
                 SizedBox(
                  height: 8.h,
                ),
                HomeRectangles(
                  icon: Icons.alarm,
                  text: 'Panadol',
                  time: '2:00 AM',
                ),
                HomeRectangles(
                  icon: Icons.monitor_heart_outlined,
                  text: 'Heart Doctor',
                  time: '1:00 AM',
                ),
                 HomeRectangles(
                  icon: Icons.local_fire_department_outlined,
                  text: 'Light exercise',
                  time: '1:00 - 1:45 AM',
                ),
              ],
            ),
          ),
        ));
  }
}
