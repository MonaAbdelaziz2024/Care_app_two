// ignore_for_file: prefer_const_constructors

//import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/homepage/home_page.dart';
import 'package:care_app_two/screens/signin/sign_in_two.dart';
import 'package:care_app_two/screens/signup/signup_screen.dart';
import 'package:care_app_two/screens/widgets/Custom_line.dart';
//import 'package:care_app_two/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:care_app_two/screens/widgets/signin_with_google.dart';
//import 'package:care_app_two/screens/widgets/signup_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter/widgets.dart';

class SIGNIN extends StatefulWidget {
  const SIGNIN({super.key});

  @override
  State<SIGNIN> createState() => _SIGNINState();
}

class _SIGNINState extends State<SIGNIN> {
  Color color = Colors.grey;
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(context),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackground), fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ListView(
              children: [
                // padding: EdgeInsets.symmetric(horizontal: 29),
                /*SizedBox(
                  height: 8,
                ),*/
                
                // CustomLogo(),
                Center(
                  child: Text('SIGN IN',
                      style: Styles.Style42.copyWith(color: Color(0xff0075FE))),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15).r,
                        child: Text(
                          'Email',
                          style: Styles.Style15,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextField(
                        backgroundColor: Color(0xffb7cfff),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15).r,
                        child: Text(
                          'Password',
                          style: Styles.Style15,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextField(obscureText: true,),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Checkbox(value: value,
                   
                    checkColor: Colors.white,
      activeColor: Color(0xff0075FE),
       tristate: true,
      shape: CircleBorder(),
                     onChanged: (newValue) {setState(() {value=newValue?? false;
                       
                     });
                     
                     }
                     )
                     
                          // IconButton(
                          //   onPressed: () {
                          //     color = Colors.blue;
                          //     setState(() {});
                          //   },
                          //   icon: Icon(
                          //     FontAwesomeIcons.solidCircleCheck,
                          //     color: color,
                          //     size: 24,
                          //   ),
                          // ),
                          ,Text(
                            'Remember me',
                            style: Styles.Style13,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButton(
                        nextIcon: false,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        text: 'Sign In',
                      ),
                      SizedBox(
                        height: 9.h,
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
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8).r,
                            child: Text(
                              'Forgot Password?',
                              style: Styles.Style12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomLine(),
                      SizedBox(
                        height: 10.h,
                      ),
                      SignWithGoogle(
                        text: "Sign In with Google",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: Styles.Style12,
                          ),
                          SizedBox(
                            width: 10.w,
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
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
