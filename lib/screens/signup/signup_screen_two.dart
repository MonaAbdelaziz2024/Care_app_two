
import 'package:care_app_two/screens/widgets/signup_view_two_body.dart';
import 'package:flutter/material.dart';

class SignupViewTwo extends StatelessWidget {
  const SignupViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Colors.white,
      body:SignupViewTwoBody(),
    );
  }
}