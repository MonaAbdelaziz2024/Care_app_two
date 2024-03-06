
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/signup/signup_screen_two.dart';
import 'package:care_app_two/screens/widgets/Custom_line.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:care_app_two/screens/widgets/signup_with_google.dart';
import 'package:flutter/material.dart';


class CustomSignupItems extends StatefulWidget {
  const CustomSignupItems({super.key});

  @override
  State<CustomSignupItems> createState() => _CustomSignupItemsState();
}

class _CustomSignupItemsState extends State<CustomSignupItems> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool onTap = false;

    return Padding(
      padding: const EdgeInsets.only(top: 110 ,left: 38, right: 39),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Center(
              child: Text(
                "SIGN UP",
                
                style: Styles.Style42.copyWith(color: kTextButtonColor),
                // textAlign: TextAlign.left,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ),
            child: Text("Username", style: Styles.Style16),
          ),
          const SizedBox(width: 350, height: 52, child: CustomTextField()),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ),
            child: Text("Email", style: Styles.Style14),
          ),
          const SizedBox(width: 350, height: 52, child: CustomTextField()),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ),
            child: Text("Password", style: Styles.Style14),
          ),
          const SizedBox(
              width: 350,
              height: 52,
              child: CustomTextField(
                obscureText: true,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: IconButton(
                    // focusColor: color,
                    //color: Colors.blue,
                    onPressed: () {},
                    icon: Image.asset('assets/images/Check_fill.png')
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'I agree to the ',
                    style: Styles.Style11.copyWith(
                        fontWeight: FontWeight.w800),
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
                                text: 'Privacy  Policy',
                                style: Styles.Style11.copyWith(
                                    color: const Color(0xff0062D6)
                                        .withOpacity(.8),
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
          const Padding(
            padding: EdgeInsets.only(top: 16, bottom: 20),
            child: CustomLine(),
          ),
          const SignupWithGoogle(),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?  ",
                  style: Styles.Style11),
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
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Image.asset('assets/images/Ellipse 69.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Image.asset('assets/images/Ellipse 68.png'),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
