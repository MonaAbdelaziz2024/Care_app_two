import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';

import 'package:care_app_two/screens/widgets/chatbot_bubble.dart';
import 'package:care_app_two/screens/widgets/custom_background.dart';
import 'package:care_app_two/screens/widgets/custom_bottom_navigation_bar.dart';
import 'package:care_app_two/screens/widgets/custom_message_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBotMessages extends StatelessWidget {
  const ChatBotMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomChatbotAppbar(context),
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          const CustomBackground(image: kBackgroundStart),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              bottom: 16,
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
            padding: const EdgeInsets.only(top: 160, left: 16, right: 16).r,
            child: const Column(
              children: [
                 ChatBubble(),
                 ChatBubbleFromFrined(),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                      top: 650, right: 32, left: 32, bottom: 28)
                  .r,
              child: const CustomMessageTextfield())
        ]),
        bottomNavigationBar:
            const CustomBottomNavigationBar() // body: ListView(

        );
  }
}
