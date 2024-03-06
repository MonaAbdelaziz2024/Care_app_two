import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

class SignupWithGoogle extends StatelessWidget {
  const SignupWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 53,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(
            color: kLogoColor,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kGoogleImage,
              width: 21,
              height: 21,
            ),
            const SizedBox(
              width: 10,
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
