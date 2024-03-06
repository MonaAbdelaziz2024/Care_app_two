import 'package:care_app_two/helper/styles.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';
import 'package:flutter/material.dart';

class CustomDateOfBirth extends StatefulWidget {
  const CustomDateOfBirth({super.key});

  @override
  State<CustomDateOfBirth> createState() => _CustomDateOfBirthState();
}

class _CustomDateOfBirthState extends State<CustomDateOfBirth> {
  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(//DropdownDatePicker
      height: 55,
      child: DropdownDatePicker(
        dateformatorder: OrderFormat.DMY, // default is myd
        inputDecoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(10)
          //     ,)
        ), // optional
        isDropdownHideUnderline: true, // optional
        isFormValidator: true, // optional
        startYear: 1900, // optional
        endYear: 2020, // optional
        width: 17, isExpanded: true,
        // optional
        selectedDay: 21, // optional
        selectedMonth: 2, // optional
        selectedYear: 2000, // optional
        onChangedDay: (value) => print('onChangedDay: $value'),
        onChangedMonth: (value) => print('onChangedMonth: $value'),
        onChangedYear: (value) => print('onChangedYear: $value'),
        boxDecoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(10),

          //border: Border.all(color : Color(0xffd4d5ee), width: 1.0)
        ), // optional
        // showDay: false,// optional
        dayFlex: 1, // optional
        monthFlex: 1,
        yearFlex: 1,
        locale: "en_abbv", // optional
        hintDay: 'Day', // optional
        hintMonth: 'Month', // optional
        hintYear: 'Year', // optional
        hintTextStyle: Styles.Style14,
        textStyle: Styles.Style12.copyWith(
            fontWeight: FontWeight.w600, fontSize: 13), // optional
      ),
    );
  }
}
