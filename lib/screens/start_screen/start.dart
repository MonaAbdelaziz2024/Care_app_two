// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

// import 'package:care_app_project_one/screens/sign_in.dart';
// import 'package:care_app_project_one/screens/signup_screen.dart';
// import 'package:care_app_project_one/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/signup/signup_screen.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          /* width: 500,
          height: 700,*/
          /*  decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/start.png'), fit: BoxFit.fill),
          ),*/
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90, right: 50),
                child: Image.asset('images/photo_logo.png'),
              ),
              SizedBox(
                height: 55,
              ),
              Container(
                width: 268,
                height: 155.878,
                child: Column(
                  children: [
                    Text(
                      "Welcome to",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Kadwa',
                        fontSize: 40.02,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff022B3A),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Care-App",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Kadwa',
                        fontSize: 41.02,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff022B3A),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                nextIcon: true,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpView();
                      },
                    ),
                  );
                },
                //nextIcon: true,
                text: "START NOW",
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 303,
                height: 54.331,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color(0xff022B3A),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SIGNIN();
                            //     },
                            //   ),
                            // );
                          },
                        ),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        color: Color(0xff022B3A),
                        fontFamily: 'Kadwa',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
