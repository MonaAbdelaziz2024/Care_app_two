// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

// import 'package:care_app_project_one/screens/sign_in.dart';
// import 'package:care_app_project_one/screens/signup_screen.dart';
// import 'package:care_app_project_one/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/start_view_body.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StartViewBody(),
    );
  }
}
