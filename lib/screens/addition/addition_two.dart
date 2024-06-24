import 'dart:async';

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdditionTwo extends StatefulWidget {
  const AdditionTwo({super.key});

  @override
  State<AdditionTwo> createState() => _AdditionTwoState();
}

class _AdditionTwoState extends State<AdditionTwo> {
  int num = 0;
  late DateTime dateTime;
  DateTime? start;
  DateTime? end;
  late TimeOfDay timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    dateTime = DateTime.now();
    timeOfDay = TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.red,
            offset: Offset(0, 2.5),
            blurRadius: 4.0,
          )
        ]),
        child: const BottomAppBar(
          elevation: 0,
          color: Color(0xfffdfdff),
          shadowColor: Color(0xffECECEC),
          child: CustomButton(
            text: 'Confirm',
            nextIcon: false,
          ),
        ),
      ),
      appBar: CustomCareAppbar(context, 'New Alarm'),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20).r,
                        borderSide: BorderSide.none),
                    labelText: 'Name of Medicine',
                    filled: true,
                    fillColor: const Color(0xffECECEC)),
              ),
              SizedBox(
                height: 4.h,
              ),
              //Divider(),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17).r,
                        borderSide: BorderSide.none),
                    labelText: 'Notes',
                    filled: true,
                    fillColor: const Color(0xffECECEC)),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16).r,
                child: const Divider(
                  thickness: 0.5,
                ),
              ),
              Row(
                children: [
                  Text("Doses",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    width: 180.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16).r,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 13.r,
                      child: Center(
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  num -= 1;
                                });
                              },
                              icon: const Icon(
                                FontAwesomeIcons.minus,
                                size: 14,
                                color: Color(0xff676767),
                              ))),
                    ),
                  ),
                  Text(
                    '$num',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16).r,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff0597F2),
                      radius: 13.r,
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                num += 1;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 14,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 18).r,
                child: const Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8).r,
                child: const Text("Times per Day",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Row(
                children: [
                  // AddTimeContainer(),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 110.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16).r,
                        border: Border.all(
                          color: const Color(0xff0597F2),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16).r,
                            child: const Text("New time",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showTime(context);
                            },
                            icon: const Icon(
                              // ignore: deprecated_member_use
                              FontAwesomeIcons.add,
                              size: 15,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14).r,
                child: const Divider(),
              ),
              Row(
                children: [
                  const Text(
                    "Repetition",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 140.w,
                  ),
                  const Text("Different days",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_right_sharp))
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Is taken in",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 165.w,
                  ),
                  const Text("Add Days",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_right_sharp))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<TimeOfDay> showTime(BuildContext context) async {
    final resultTime = await showTimePicker(
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  secondary: const Color(0xffFFC87A),
                  primary: const Color(0xff0075FE)
                      .withOpacity(0.289), // header background color
                  onPrimary: const Color(0xff21005D), // header text color
                  onSurface: const Color(0xff1F1F1F), // body text color
                  //surface:Colors.white ,
                  // onSecondary: Color(0xffDAEBFF)
                  //tertiary: Color(0xffDAEBFF)
                  // onTertiary: Color(0xffDAEBFF)
                  inversePrimary: Colors.blue),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xff0075FE), // button text color
                ),
              ),
            ),
            child: child!);
      },
      context: context,
      initialTime: timeOfDay,
      initialEntryMode: TimePickerEntryMode.input,
      helpText: 'Enter time',
    );
    if (resultTime != null) {
      setState(() {
        timeOfDay = resultTime;
      });
    }
    return resultTime ?? TimeOfDay.now();
  }
}

class AddTimeContainer extends StatelessWidget {
   AddTimeContainer({
    super.key,
    required this.time,
  });
  Future<TimeOfDay> time;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 25.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16).r,
          border: Border.all(
            color: const Color(0xff0597F2),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Center(
            child: Text(time.toString(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xff0597F2),
            radius: 10.r,
            child: const Icon(
              FontAwesomeIcons.xmark,
              size: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
