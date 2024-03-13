import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/signup/signup_screen_two.dart';
import 'package:care_app_two/screens/widgets/Custom_line.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:care_app_two/screens/widgets/signup_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSignupItems extends StatefulWidget {
  const CustomSignupItems({super.key});

  @override
  State<CustomSignupItems> createState() => _CustomSignupItemsState();
}

class _CustomSignupItemsState extends State<CustomSignupItems> {
   Color color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool onTap = false;
   

    return Padding(
      padding: const EdgeInsets.only(top: 110, left: 38, right: 39).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12).r,
            child: Center(
              child: Text(
                "SIGN UP",

                style: Styles.Style42.copyWith(color: kTextButtonColor),
                // textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ).r,
            child: Text("Username", style: Styles.Style16),
          ),
          SizedBox(width: 350.w, height: 52.h, child: const CustomTextField()),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ).r,
            child: Text("Email", style: Styles.Style14),
          ),
          SizedBox(width: 350.w, height: 52.h, child: const CustomTextField()),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ).r,
            child: Text("Password", style: Styles.Style14),
          ),
          SizedBox(
              width: 350.w,
              height: 52.h,
              child: const CustomTextField(
                obscureText: true,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10).r,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12).r,
                  child: IconButton(
                    // focusColor: color,
                    //color: Colors.blue,
                    onPressed: () {
                      color = Colors.blue;
                      setState(() {});
                    },
                    icon: Icon(
                      FontAwesomeIcons.solidCircleCheck,
                      color: color,
                      size: 24,
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'I agree to the ',
                    style: Styles.Style11.copyWith(fontWeight: FontWeight.w800),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: Styles.Style11.copyWith(
                            color: const Color(0xff0062D6).withOpacity(.8),
                            fontWeight: FontWeight.w800),
                      ),
                      TextSpan(
                          text: ' and ',
                          style: Styles.Style11.copyWith(
                              fontWeight: FontWeight.w800),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Privacy Policy',
                                style: Styles.Style11.copyWith(
                                    color:
                                        const Color(0xff0062D6).withOpacity(.8),
                                    fontWeight: FontWeight.w800))
                          ])
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            nextIcon: true,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SignupViewTwo();
                  },
                ),
              );
            },
            text: "Next",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20).r,
            child: const CustomLine(),
          ),
          const SignupWithGoogle(),
          SizedBox(
            height: 11.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?  ", style: Styles.Style11),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SIGNIN();
                      },
                    ),
                  );
                },
                child: Text("Sign In",
                    style: Styles.Style11.copyWith(
                        color: const Color(0xff0062D6).withOpacity(.9))),
              ),
            ],
          ),
          SizedBox(
            height: 27.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24).r,
                child: Image.asset('assets/images/Ellipse 69.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24).r,
                child: Image.asset('assets/images/Ellipse 68.png'),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
