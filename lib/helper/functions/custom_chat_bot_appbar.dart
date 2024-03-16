import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar CustomChatbotAppbar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
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
AppBar CustomAppbar(BuildContext context) {
  return AppBar(
     toolbarHeight: 65.h,
    iconTheme: IconThemeData(opacity: 0),
   title: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Image.asset(
        kLogo,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

AppBar CustomAppbarBack(BuildContext context) {
  return AppBar(
    toolbarHeight: 65.h,
    //leadingWidth: 30.w,
    leading: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xff7E869E).withOpacity(0.25),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 23,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Image.asset(
        kLogo,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
