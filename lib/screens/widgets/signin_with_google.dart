import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

class SignWithGoogle extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SignWithGoogle({this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 400,
        height: 53,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffFF9500),
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
                text!,
                style: Styles.Style20.copyWith(color: kTextColor),
              ),
            ),
          ],
        ));
  }
}
