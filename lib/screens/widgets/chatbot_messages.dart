import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';

import 'package:care_app_two/screens/widgets/chatbot_bubble.dart';
import 'package:care_app_two/screens/widgets/custom_background.dart';
import 'package:care_app_two/screens/widgets/custom_bottom_navigation_bar.dart';
import 'package:care_app_two/screens/widgets/custom_message_textfield.dart';
import 'package:care_app_two/screens/widgets/home_bottom_navigator.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBotMessages extends StatelessWidget {
  const ChatBotMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomChatbotAppbar(context),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Stack(children: [
            const CustomBackground(image: kBackgroundStart),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                
                left: 16,
                right: 16,
              ).r,
              child: SizedBox(
                width: 400.w,
                height: 600.h,
                child: Image.asset(
                  "assets/images/chatmessages.png",
                  scale: 0.1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 16, right: 16).r,
              child: const Column(
                children: [
                   ChatBubble(),
                   ChatBubbleFromFrined(),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                        top: 600, right: 32, left: 32, )
                    .r,
                child: const CustomMessageTextfield())
          ]),
        ),
        bottomNavigationBar: HomeCurvedNavigationBar()
          //  const CustomBottomNavigationBar() // body: ListView(

        );
  }
}
