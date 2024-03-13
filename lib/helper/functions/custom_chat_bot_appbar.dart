
  import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

AppBar CustomChatbotAppbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20,
          color: Colors.black,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        'Chat with AI Bot',
        style: Styles.Style20.copyWith(
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }