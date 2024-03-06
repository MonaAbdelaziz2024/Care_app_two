// ignore_for_file: prefer_const_constructors

//import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in_two.dart';
import 'package:care_app_two/screens/signup/signup_screen.dart';
import 'package:care_app_two/screens/widgets/Custom_line.dart';
import 'package:care_app_two/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:care_app_two/screens/widgets/signin_with_google.dart';
//import 'package:care_app_two/screens/widgets/signup_with_google.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SIGNIN extends StatelessWidget {
  const SIGNIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundSigninOne),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            // padding: EdgeInsets.symmetric(horizontal: 29),
            SizedBox(
              height: 8,
            ),
            CustomAppBarItems(),
            Text('SIGN IN', style: Styles.Style42.copyWith(color: Color(0xff0075FE))),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Email',
                      style: Styles.Style15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    backgroundColor: Color(0xffb7cfff),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Password',
                      style: Styles.Style15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                        color: Colors.blue,
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.solidCircleCheck,
                          color: Colors.blue,
                          size: 24,
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: Styles.Style13,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    nextIcon: false,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SigninTwo();
                          },
                        ),
                      );
                    },
                    text: 'Sign In',
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const SigninTwo();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: Styles.Style12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomLine(),
                  SizedBox(
                    height: 8,
                  ),
                  SignWithGoogle(
                    text: "Sign In with Google",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: Styles.Style12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignUpView();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color(0xff0062D6),
                            fontFamily: 'Cairo',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
