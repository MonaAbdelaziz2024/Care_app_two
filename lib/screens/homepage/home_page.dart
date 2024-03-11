import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              trailing: Image.asset('assets/images/Bell.png')
            ),
            SizedBox(height: 26.h,),
           CustomTextField(
              hintText: 'Search..',
              backgroundColor: Colors.white,
            ),
          ],
        ),
         
      ),
    );
  }
}
