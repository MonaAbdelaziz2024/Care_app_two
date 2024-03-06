// ignore_for_file: prefer_const_constructors


import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in_two.dart';
import 'package:care_app_two/screens/signup/signup_screen.dart';
import 'package:care_app_two/screens/widgets/Custom_line.dart';
import 'package:care_app_two/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SIGNIN extends StatelessWidget {
  const SIGNIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Container(
              width: 895,
              height: 1038,
              child: Column(
                children: [
                  const CustomAppBarItems(),
                  Container(
                    width: double.infinity,
                    height: 910,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Sign In',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Kadwa',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: Styles.Style14,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomTextField(
                                  backgroundColor: Color(0xffb7cfff),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Password',
                                  style: Styles.Style14,
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
                                       //FontAwesomeIcons.solidCircleCheck,
                                       Icons.arrow_back_ios_new,
                                        color: Colors.blue,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      'Remember me',
                                      style: Styles.Style11,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomButton(
                                  nextIcon: true,
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
                                  height: 10,
                                ),
                                Center(
                                  child: Text(
                                    'Forgot Password?',
                                    style: Styles.Style11,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomLine(),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 54.331,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Color(0xffE33551),
                                    ),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "images/google.png",
                                        width: 21,
                                        height: 21,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Sign In with Google",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Don’t have an account?',
                                      style: Styles.Style11,
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
                                          fontFamily: 'Kadwa',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff0062D6),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
