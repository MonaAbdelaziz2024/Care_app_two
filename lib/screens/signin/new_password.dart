// ignore_for_file: prefer_const_constructors, unused_import

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/start_screen/start.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_logo.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(kBackground), fit: BoxFit.fill),
        ),
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomLogo(),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 80, left: 28, right: 29).r,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        'Create a new password',
                        style: Styles.Style24.copyWith(
                          color: const Color(0xff0075FE),
                        ),
                      ),
                      SizedBox(
                        height: 67.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18).r,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enter New Password',
                            style: Styles.Style14.copyWith(
                                color: const Color(0xff000000)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      const CustomTextField(obscureText: true,
                        backgroundColor: Color(0xffD4D6EE),
                      ),
                      SizedBox(
                        height: 33.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18).r,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Confirm New password',
                            style: Styles.Style14.copyWith(
                                color: const Color(0xff000000)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      const CustomTextField(obscureText: true,
                        backgroundColor: Color(0xffD4D6EE),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      CustomButton(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const SIGNIN();
                              },
                            ),
                          );
                        },
                        nextIcon: false,
                        text: 'Confirm',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
