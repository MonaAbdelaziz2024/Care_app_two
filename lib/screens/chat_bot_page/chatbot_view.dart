// ignore_for_file: prefer_const_constructors

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';

import 'package:care_app_two/screens/widgets/custom_background.dart';
import 'package:care_app_two/screens/widgets/custom_bottom_navigation_bar.dart';
import 'package:care_app_two/screens/widgets/custom_message_textfield.dart';
import 'package:care_app_two/screens/widgets/home_bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBotView extends StatelessWidget {
  const ChatBotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomChatbotAppbar(context),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
          const CustomBackground(image: kBackgroundStart),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              bottom: 16,
              left: 16,
              right: 16,
            ).r,
            child: Container(
                width: 400.w,
                height: 600.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12).r,
                    color: const Color(0xffEEEEEE).withOpacity(0.5)),
                child: Image.asset('assets/images/botimage.png')),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 650, right: 32, left: 32, bottom: 28)
                    .r,
            child: const CustomMessageTextfield(),
          )
             
        ]),
      ),

  

      bottomNavigationBar:CustomBottomNavigationBar()
      
      // const CustomBottomNavigationBar(),
     
    );
  }
}
