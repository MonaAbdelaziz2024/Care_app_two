
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/screens/widgets/custom_background.dart';
import 'package:care_app_two/screens/widgets/custom_signup_items.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
     physics:BouncingScrollPhysics(),
    
      child: Stack(
         clipBehavior: Clip.none,
      //fit: StackFit.passthrough,
      children: [ 
        CustomBackground(image: kBackground,),
       
        CustomSignupItems(),
       
      
      ]
            ),
    );

  }
}
