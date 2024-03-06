
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in_two.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_dropdown_dateofbirth.dart';
import 'package:care_app_two/screens/widgets/custom_dropdown_list.dart';
import 'package:care_app_two/screens/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class SignupInfoTwo extends StatelessWidget {
  const SignupInfoTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 110,
        left: 28,
        right: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child:  Text(
              "SIGN UP",
              style: Styles.Style42.copyWith(color: kTextButtonColor),
              // textAlign: TextAlign.left,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 46,
              bottom: 3,
            ),
            child: Text("Date of birth", style: Styles.Style14),
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomDateOfBirth(),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 17,
              bottom: 3,
            ),
            child: Text("Gender", style: Styles.Style14),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CustomRadioButton(text: 'Male', value: 0, width: 140, height: 40),
              const SizedBox(
                width: 45,
              ),
              CustomRadioButton(
                  text: 'Female', value: 0, width: 160, height: 40),
            ],
          ),
          const SizedBox(
            height: 21,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 21,
              bottom: 3,
            ),
            child: Row(
              children: [
                Text("Height", style: Styles.Style14),
                SizedBox(
                  width: 130,
                ),
                Text("Weight", style: Styles.Style14),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              CustomDropDownList(
                  items: ['item1', 'item2'], width: 140, height: 40),
              SizedBox(
                width: 45,
              ),
              CustomDropDownList(
                  items: ['item1', 'item2'], width: 160, height: 40),
            ],
          ),
          //  SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 20,
              bottom: 11,
            ),
            child: Text(
              'The Disease',
              style: Styles.Style14,
            ),
          ),
          const CustomDropDownList(
              items: ['item1', 'item2'], width: 400, height: 40),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              top: 13,
              bottom: 13,
            ),
            child: Text(
              'Date of illness',
              style: Styles.Style14,
            ),
          ),
          const CustomDateOfBirth(),
          const SizedBox(
            height: 40,
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
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Image.asset('assets/images/Ellipse 68.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Image.asset('assets/images/Ellipse 69.png'),
              ),
              
            ],
          ),
          //const SizedBox(height: 40,),
          //CustomRadioButton(text: 'Male', value: 1, width: 140, height: 40),
          // const SizedBox(height: 40,),
          // const CustomDateOfBirth(),
        ],
      ),
    );
  }
}
