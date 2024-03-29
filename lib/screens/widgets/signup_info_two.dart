import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_dropdown_dateofbirth.dart';
import 'package:care_app_two/screens/widgets/custom_dropdown_list.dart';
import 'package:care_app_two/screens/widgets/custom_logo.dart';
import 'package:care_app_two/screens/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupInfoTwo extends StatelessWidget {
  const SignupInfoTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image:
            DecorationImage(image: AssetImage(kBackground), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 28, right: 29).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor:
                          const Color(0xff7E869E).withOpacity(0.25),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 23,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 73).r,
                      child: const CustomLogo(),
                    ),
                  ],
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "SIGN UP",
                  style: Styles.Style42.copyWith(color: kTextButtonColor),
                  // textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 24,
                bottom: 3,
              ).r,
              child: Text("Date of birth", style: Styles.Style14),
            ),

            const CustomDateOfBirth(),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 18,
              ).r,
              child: Text("Gender", style: Styles.Style14),
            ),

            // Row(
            //   children: [
            //     CustomRadioButton(
            //         text: 'Male',
            //         value: 0,
            //         width: MediaQuery.of(context).size.width * 0.35,
            //         height: MediaQuery.of(context).size.height * 0.06),
            //     SizedBox(
            //       width: 10.w,
            //     ),
            //     CustomRadioButton(
            //         text: 'Female',
            //         value: 0,
            //         width: MediaQuery.of(context).size.width * 0.35,
            //         height: MediaQuery.of(context).size.height * 0.06),
            //   ],
            // ),
            const CustomRadioButton(),

            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 18,
              ).r,
              child: Row(
                children: [
                  Text("Height", style: Styles.Style14),
                  SizedBox(
                    width: 130.w,
                  ),
                  Text("Weight", style: Styles.Style14),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                CustomDropDownList(
                    items: const ['item1', 'item2'],
                    width: MediaQuery.of(context).size.width * 0.36,
                    height: MediaQuery.of(context).size.height * 0.05),
                SizedBox(
                  width: 40.w,
                ),
                CustomDropDownList(
                    items: const ['item1', 'item2'],
                    width: MediaQuery.of(context).size.width * 0.36,
                    height: MediaQuery.of(context).size.height * 0.05),
              ],
            ),
            //  SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 18,
                bottom: 4,
              ).r,
              child: Text(
                'The Disease',
                style: Styles.Style14,
              ),
            ),
            CustomDropDownList(
                items: const ['item1', 'item2'],
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.05),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 18,
                bottom: 8,
              ).r,
              child: Text(
                'Date of illness',
                style: Styles.Style14,
              ),
            ),
            const CustomDateOfBirth(),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              nextIcon: true,
              text: 'Next',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SIGNIN();
                }));
              },
            ),
            SizedBox(
              height: 27.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24).r,
                  child: Image.asset('assets/images/Ellipse 68.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24).r,
                  child: Image.asset('assets/images/Ellipse 69.png'),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            )
            //const SizedBox(height: 40,),
            //CustomRadioButton(text: 'Male', value: 1, width: 140, height: 40),
            // const SizedBox(height: 40,),
            // const CustomDateOfBirth(),
          ],
        ),
      ),
    );
  }
}
