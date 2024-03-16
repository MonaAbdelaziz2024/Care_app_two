import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/widgets/custom_background.dart';
import 'package:care_app_two/screens/widgets/signup_info_two.dart';
import 'package:flutter/material.dart';

class SignupViewTwo extends StatelessWidget {
  const SignupViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbarBack(context),
      extendBodyBehindAppBar: true,
      body: const Stack(
        children: [
          CustomBackground(
            image: kBackground,
          ),
          SignupInfoTwo()
        ],
      ),
    );
  }
}
