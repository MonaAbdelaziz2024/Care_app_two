//import 'package:care_app_project_one/screens/signup_screen.dart';
//import 'package:care_app_project_one/screens/start.dart';
import 'package:care_app_two/screens/start_screen/start.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(),
            debugShowCheckedModeBanner: false,
            home: const Start(),
          );
        });
  }
}
