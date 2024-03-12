// ignore_for_file: unused_local_variable

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
//import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const icon = CupertinoIcons.bell_fill;
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.asset('assets/images/person.png'),
              ),
              title: Text(
                'Hello',
                style: Styles.Style10,
              ),
              subtitle: Text(
                'Ahmed Anwar',
                style: Styles.Style9,
              ),
              trailing: const Icon(Icons.notifications_none),
            ),
            SizedBox(
              height: 19,
            ),
            CustomTextField(
              hintText: 'Search..',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 140.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff0074fe),
              ),
             /* child: Column(
                children: [Text('Your Today\’s tasks almost done',style: Styles.Style13,)],
              ),*/
            ),
          ],
        ),
      ),
    ));
  }
}


/**ListView(
        children: [
          Container(
           
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  
             
              

            ],
          ),
        ),
          )
        ],
      ) */




/*Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/person.png'),
                ),
                title: Text(
                  'Hello',
                  style: Styles.Style10,
                ),
                subtitle: Text(
                  'Ahmed Anwar',
                  style: Styles.Style9,
                ),
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomTextField(
              hintText: 'Search..',
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),*/ 
