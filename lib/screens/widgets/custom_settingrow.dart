// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

//import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetRow extends StatelessWidget {
  const SetRow({super.key, this.icon, this.text});

  final text;
  final icon;
  // final color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.Style16,
        ),
        Icon(
          icon,
          color: const Color(0xff0075FE),
          size: 55,
        )

        /* LiteRollingSwitch(
          onSwipe: (){},
          onDoubleTap: (){},
          onTap: (){},
          width: 34.h,
         // height: 22.h,
          animationDuration: Duration(milliseconds: 400),
         /// borderRadius: BorderRadius.circular(24.0),
          value: true,
          colorOn: Color(0xff0075FE),
          colorOff: Color(0xffB8B8B8),
          iconOn: Icons.toggle_on,
          iconOff: Icons.toggle_off,
          textSize: 16.0,
          onChanged: (bool state) {
            //Use it when it is toggled
            print('turned ${(state) ? 'on' : 'off'}');
          }, 
        )*/
      ],
    );
  }
}

/*Widget CustomSwitch(bool val, Function onChangedMethod) {
  return CupertinoSwitch(
      trackColor: Color(0xffB8B8B8),
      activeColor: Color(0xff0075FE),
      value: val,
      onChanged: (newvalue) {
        onChangedMethod(newvalue);
      });
}
*/