import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in_two.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_dropdown_dateofbirth.dart';
import 'package:care_app_two/screens/widgets/custom_dropdown_list.dart';
import 'package:care_app_two/screens/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupInfoTwo extends StatelessWidget {
  const SignupInfoTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 110, left: 28, right: 29).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "SIGN UP",
              style: Styles.Style42.copyWith(color: kTextButtonColor),
              // textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ).r,
            child: Text("Date of birth", style: Styles.Style14),
          ),
          SizedBox(
            height: 15.h,
          ),
          const CustomDateOfBirth(),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 17,
              bottom: 3,
            ).r,
            child: Text("Gender", style: Styles.Style14),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              CustomRadioButton(
                  text: 'Male', value: 0, width: 130.w, height: 40.h),
              const SizedBox(
                width: 45,
              ),
              CustomRadioButton(
                  text: 'Female', value: 0, width: 130.w, height: 40.h),
            ],
          ),
          SizedBox(
            height: 21.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 21,
              bottom: 3,
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
            height: 12.h,
          ),
          Row(
            children: [
              CustomDropDownList(
                  items: const ['item1', 'item2'], width: 130.w, height: 40.h),
              const SizedBox(
                width: 45,
              ),
              CustomDropDownList(
                  items: const ['item1', 'item2'], width: 130.w, height: 40.h),
            ],
          ),
          //  SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 20,
              bottom: 11,
            ).r,
            child: Text(
              'The Disease',
              style: Styles.Style14,
            ),
          ),
          CustomDropDownList(
              items: const ['item1', 'item2'], width: 303.w, height: 37.h),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 13,
              bottom: 13,
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SigninTwo();
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
          SizedBox(height: 16.h,)
          //const SizedBox(height: 40,),
          //CustomRadioButton(text: 'Male', value: 1, width: 140, height: 40),
          // const SizedBox(height: 40,),
          // const CustomDateOfBirth(),
        ],
      ),
    );
  }
}
