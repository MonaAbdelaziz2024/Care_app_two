import 'dart:async';

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/calender_page/calendar_two.dart';
import 'package:care_app_two/screens/view_tasks/view_tasks.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AdditionTwo extends StatefulWidget {
  const AdditionTwo({super.key});

  @override
  AdditionTwoState createState() => AdditionTwoState();
}

class AdditionTwoState extends State<AdditionTwo> {
  String _range = '';
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range = ' ${DateFormat.MMMEd().format(args.value.startDate)} ';
        // -'
        // ignore: lines_longer_than_80_chars
        // ' ${DateFormat.MMMEd().format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _range = ' ${DateFormat.MMMEd().format(args.value)} ';
      } else if (args.value is List<DateTime>) {
      } else {}
    });
  }

  int num = 0;
  late DateTime dateTime;
  DateTime? start;
  DateTime? end;
  late TimeOfDay timeOfDay = TimeOfDay.now();
  List<String> times = [];
  late TimeOfDay time;

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
        child: BottomAppBar(
          elevation: 0,
          color: const Color(0xfffdfdff),
          shadowColor: const Color(0xffECECEC),
          child: CustomButton(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ShowAllTasks();
                  },
                ),
              );
            },
            text: 'Confirm',
            nextIcon: false,
          ),
        ),
      ),
      appBar: CustomCareAppbar(context, 'New Alarm'),
      //extendBodyBehindAppBar: true, //Modify
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: Column(
            //modify from Listview
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
                padding: const EdgeInsets.only(top: 10, bottom: 10).r,
                child: const Divider(
                  thickness: 1,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Times per Day",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SingleChildScrollView(
                
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ListView.builder(
                      //   physics: ScrollPhysics(),
                      //   //shrinkWrap: true,
                      //   //scrollDirection: Axis.horizontal,
                      //   itemCount: times.length,
                      //   itemBuilder: (context, index) {
                      //   return  Row(
                      //     children: [
                      //       AddTimeContainer(time: times[index]),
                      //     ],
                      //   );
                      //           }),

                      // SizedBox(
                      //   width: 16.w,
                      // ),
                      for (int i = 0; i < times.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 8).r,
                          child: AddTimeContainer(
                            time: times[i],
                            onTap: () {
                              times.removeLast();
                              setState(() {});
                            },
                          ),
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
                                onPressed: () async {
                                  await showTime(context);

                                  setState(() {});
                                  String formattedTime = formatTimeOfDay(time);
                                  times.add(formattedTime);
                                  print(formattedTime);
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
                ),
              ),
              const Divider(), //Modify
              /* Padding(
                padding: const EdgeInsets.only(top: 14).r,
                child: const Divider(),
              ),*/
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
                      onPressed: () async {
                        await showDate(context);
                      },
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
                      onPressed: () async {
                        await showDate(context);
                      },
                      icon: const Icon(Icons.chevron_right_sharp))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showDate(BuildContext context) async {
    final result = await showDatePicker(
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Color(0xff0075FE), // header background color
                onPrimary: Color(0xff1D1B20), // header text color
                onSurface: Color(0xff1F1F1F), // body text color
                surface: Colors.white,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    foregroundColor: const Color(0xff0075FE),
                    textStyle: const TextStyle(
                        color: Color(0xff0075FE)) // button text color
                    ),
              ),
            ),
            child: child!);
      },
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime.now().add(
        const Duration(days: 365 * 5),
      ),
      helpText: 'Select date',
    );
    if (result != null) {
      setState(() {
        dateTime = result;
      });
    }
  }

  Future<void> showTime(BuildContext context) async {
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
        time = resultTime;
      });
    }
  }
}

String formatTimeOfDay(TimeOfDay tod) {
  final now = DateTime.now();
  final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
  final format = DateFormat.jm(); // "6:00 AM"
  return format.format(dt);
}

// ignore: must_be_immutable
class AddTimeContainer extends StatelessWidget {
  AddTimeContainer({
    super.key,
    required this.time,
    this.onTap,
  });
  String time;
  Function()? onTap;
  // var resultTime = time.DateFormat('hh:mm a');
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
            child: Text(time,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xff0597F2),
            radius: 10.r,
            child: GestureDetector(
              onTap: onTap,
              child: const Icon(
                FontAwesomeIcons.xmark,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
