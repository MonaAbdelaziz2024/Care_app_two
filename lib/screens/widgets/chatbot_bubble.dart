
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, });
  //final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        //width: 170,
        //alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 32),
        //height: 65,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: Color(0xff0075FE),
        ),
        child:  Text(
          'Hi , how are you ?',
          style: Styles.Style13.copyWith(color: Color(0xffFDFDFF))
        ),
      ),
    );
  }
}

class ChatBubbleFromFrined extends StatelessWidget {
  const ChatBubbleFromFrined({super.key});
  // final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        //width: 170,
        //alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 32),
        //height: 65,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: Color(0xffFDFDFF),
        ),
        child: Text(
         'Hi! I\'m doing well, thanks for asking. I\'m always excited to learn and complete new tasks. How about you? What would you like to talk about today?',
          style:  Styles.Style13.copyWith(color: Colors.black)
          ,
        ),
      ),
    );
  }
}
