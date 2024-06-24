// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, prefer_const_constructors, no_leading_underscores_for_local_identifiers

//import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/cupertino.dart';

class SetRow extends StatefulWidget {
  const SetRow({super.key, required String text});

  @override
  State<SetRow> createState() => _SetRowState();
}

class _SetRowState extends State<SetRow> {
  @override
  Widget build(BuildContext context) {
  // String text = 'Sound';
   // int sound = 50;
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //children: [
        //Text(
         // text,
        //  style: Styles.Style16,
       // ),
      /*  Slider(
            min: 0,
            max: 100,
           // divisions: 100,
            activeColor: Color(0xff0075FE),
            value: sound.toDouble(),
            onChanged: (value) {
              setState(() {
                sound = value.round();
              });
            }),
      ],*/
    );
  }

  
}




Row buildNotificationOption(String title, bool value, Function onChangeMethod) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Styles.Style16,
      ),
      Transform.scale(
        scale: 0.9,
        child: CupertinoSwitch(
            activeColor: Color(0xff0075FE),
            trackColor: Color(0xffB8B8B8),
            value: value,
            onChanged: (bool newValue) {
              onChangeMethod(newValue);
            }),
      )
    ],
  );
}
