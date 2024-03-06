import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatefulWidget {
  CustomRadioButton({
    super.key,
    required this.text,
    required this.value,
    this.valueChoose = 1,
    required this.width,
    required this.height,this.onTap
  });
  final String text;
  int? valueChoose;
  final int value;
  final double width, height;
  final void Function()? onTap;
  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.only(left: 48),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 16, left: 10, bottom: 10, top: 10),
          child: Text(
            widget.text,
            style:const TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 15,
                fontFamily: 'Cairo'),
          ),
        ),
        // const SizedBox(
        //   width: 10,
        // ),
        // Radio(
        //     //splashRadius: 1,
        //     value: widget.value,
        //     groupValue: widget.valueChoose,
        //     onChanged: (value) {
        //       setState(() {
        //         widget.valueChoose = value;
        //       });
        //     }),
      ),
    );
  }
}
