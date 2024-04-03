// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/widgets/custom_line_setting.dart';
import 'package:care_app_two/screens/widgets/custom_settingrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SettingView extends StatelessWidget {
  const SettingView({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Setting'),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                SizedBox(height: 56.h),
                Text(
                  'Notification',
                  style: Styles.Style166,
                ),
                SizedBox(
                  height: 11,
                ),
                Container(
                  height: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xfff6f6f6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Column(
                      children: [
                        SetRow(
                          text: 'General Notification',
                          icon: Icons.toggle_on,
                         
                          //icon: (),
                        ),
                        LineSetting(),
                        SetRow(
                          text: 'Sound',
                        ),
                        LineSetting(),
                        SetRow(
                          text: 'Vibrate ',
                          icon: (Icons.toggle_off),
                        ),
                        LineSetting(),
                        SetRow(
                          text: ' App Updates',
                          icon: (Icons.toggle_on),
                        ),
                        LineSetting(),
                        SetRow(
                          text: ' New Service Available',
                          icon: (Icons.toggle_on),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                Container(
                    height: 98.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xfff6f6f6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 11),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.privacy_tip_outlined),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                'Privacy Policy',
                                style: Styles.Style16,
                              )
                            ],
                          ),
                        ),
                        LineSetting(),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.check_circle_outline_rounded),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                'Terms of Use',
                                style: Styles.Style16,
                              )
                            ],
                          ),
                        ),
                      ]),
                    ))
              ],
            ),
          ),
        ));
  }
}


/*class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool val1 = true;
  onChangedFunction1(bool newvalue1){
    setState((){
      val1 = newvalue1;
    });
  }
   bool val2 = false;
  onChangedFunction2(bool newvalue2){
    setState((){
      val1 = newvalue2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Setting'),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                SizedBox(height: 56.h),
                Text(
                  'Notification',
                  style: Styles.Style166,
                ),
                SizedBox(
                  height: 11,
                ),
                Container(
                  height: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xfff6f6f6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Column(
                      children: [
                        SetRow(
                          
                          CustomSwitch( val1, onChangedFunction1)  ,
                          text: 'General Notification', 
                         // LiteRollingSwitch(onChanged: (bool ) { on; },),
                          //icon: (),
                        ),
                        LineSetting(),
                        SetRow(
                          text: 'Sound',
                        ),
                        LineSetting(),
                        SetRow(
                          text: 'Vibrate ',
                          //icon: (Icons.toggle_off),
                        ),
                        LineSetting(),
                        SetRow(
                          text: ' App Updates',
                          icon: (Icons.toggle_on),
                        ),
                        LineSetting(),
                        SetRow(
                          text: ' New Service Available',
                          icon: (Icons.toggle_on),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                Container(
                    height: 98.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xfff6f6f6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 11),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.privacy_tip_outlined),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                'Privacy Policy',
                                style: Styles.Style16,
                              )
                            ],
                          ),
                        ),
                        LineSetting(),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.check_circle_outline_rounded),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                'Terms of Use',
                                style: Styles.Style16,
                              )
                            ],
                          ),
                        ),
                      ]),
                    ))
              ],
            ),
          ),
        ));
  }
}
  
*/
