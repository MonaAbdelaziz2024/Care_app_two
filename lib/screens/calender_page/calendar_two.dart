import 'dart:convert';
import 'dart:ffi';

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/widgets/custom_home_rec.dart';
import 'package:care_app_two/screens/widgets/rectangle_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// My app class to display the date range picker
class CalendarTwo extends StatefulWidget {
  @override
  CalendarTwoState createState() => CalendarTwoState();
}

/// State for MyApp
class CalendarTwoState extends State<CalendarTwo> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
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
        _range = ' ${DateFormat.MMMEd().format(args.value.startDate)}  -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat.MMMEd().format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Calendar'),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(12.0).r,
              child: Stack(
                // fit: StackFit.passthrough,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(16).r,
                        border: Border.all(color: Color(0xffCAC4D0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text('Selected date: $_selectedDate'),
                        // Text('Selected date count: $_dateCount'),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 8, left: 22, right: 11).r,
                          child: Text(
                            '$_range',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Divider(),
                        //  Text('Selected ranges count: $_rangeCount')
                        SfDateRangePicker(
                          monthCellStyle: DateRangePickerMonthCellStyle(
                              textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff1F1F1F),
                                  fontWeight: FontWeight.w400)

                              //color: Color(0xff1F1F1F),
                              ),
                          //selectionRadius: 100,
                          rangeTextStyle: TextStyle(
                              fontSize: 14.sp,
                              //color: Color(0xff1F1F1F),
                              fontWeight: FontWeight.w400),
                          selectionTextStyle: TextStyle(
                              fontSize: 14.sp,
                              //color: Color(0xff1F1F1F),
                              fontWeight: FontWeight.w400),
                          showActionButtons: true,
                          headerStyle: DateRangePickerHeaderStyle(
                              backgroundColor: Color(0xffF6F6F6).withOpacity(0),
                              textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1F1F1F))),
                          headerHeight: 40.h,
                          // todayHighlightColor: Color(0xff0075FE),
                          //selectionColor: Color(0xff0075FE),
                          rangeSelectionColor: Color(0xff9FCBFF),
                          endRangeSelectionColor: Color(0xff0075FE),
                          startRangeSelectionColor: Color(0xff0075FE),
                          todayHighlightColor: Color(0xff0075FE),
                          backgroundColor: Color(0xffF6F6F6).withOpacity(1),
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.range,
                          initialSelectedRange: PickerDateRange(
                              DateTime.now().subtract(const Duration(days: 4)),
                              DateTime.now().add(const Duration(days: 3))),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 350).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Positioned(
                            top: 300,
                            child: RectCalendar(
                              text: 'Heart Doctor',
                              time: '1:00 AM',
                              icon: Icons.monitor_heart_outlined,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
