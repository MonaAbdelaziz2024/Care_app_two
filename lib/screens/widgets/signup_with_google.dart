import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupWithGoogle extends StatelessWidget {
  const SignupWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400.w,
        height: 53.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17).r,
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(
            color: kLogoColor,
            width: 2.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kGoogleImage,
              width: 21.w,
              height: 21.h,
            ),
             SizedBox(
              width: 10.w,
            ),
             Center(
              child: Text(
                "Sign up with Google",
                style: Styles.Style20.copyWith(color: kTextColor),
              ),
            ),
          ],
        ));
  }
}
