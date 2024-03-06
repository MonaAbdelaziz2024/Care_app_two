import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
      ),
      child: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 38),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           const   Text(
                "car",
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 155.07691955566406,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0075FE),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  kLogo,
                  scale: 0.8,
                ),
              ),
            ],
          ),
         const SizedBox(
            height: 20,
          ),
         const Center(
            child: Text(
              'Welcome  ',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Color(0xff0075FE),
              ),
            ),
          ),
         const SizedBox(
            height: 94,
          ),
          Container(
            width: 283,
            height: 61,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpView();
                    },
                  ),
                );
              },
              child: Container(
                height: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xffFF9500),
                    width: 2,
                  ),
                ),
                child:const Center(
                  child: Text(
                    'START NOW',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFF9500),
                    ),
                  ),
                ),
              ),
            ),
          ),
        const  SizedBox(
            height: 26,
          ),
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
            child: Container(
                  height: 61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    color: kButtonColor,
                    border: Border.all(
                      color: kButtonColor,
                      width: 2,
                    ),
                  ),
                  child:const Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
          ),
          // CustomButton(
          //   nextIcon: false,
          //   onTap: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return const SIGNIN();
          //         },
          //       ),
          //     );
          //   },
          //   text: 'SIGN IN',
          // ),
        ],
      ),
    );
  }
}
