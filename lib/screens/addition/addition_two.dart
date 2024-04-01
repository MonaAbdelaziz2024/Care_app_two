import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdditionTwo extends StatefulWidget {
  const AdditionTwo({super.key});

  @override
  State<AdditionTwo> createState() => _AdditionTwoState();
}

class _AdditionTwoState extends State<AdditionTwo> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration:  BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(0, 2.5),
                blurRadius: 4.0,
              )
            ]),
        child: BottomAppBar(
           elevation: 0,
        color: Color(0xfffdfdff),
        shadowColor: Color(0xffECECEC),
        child: CustomButton(text: 'Confirm',nextIcon: false,),),
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
                              borderRadius: BorderRadius.circular(17).r,
                              borderSide: BorderSide.none),
                          labelText: 'Name of Medicine',
                          filled: true,
                          fillColor: Color(0xffECECEC)),
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
                          fillColor: Color(0xffECECEC)),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16).r,
                      child: Divider(
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
                                    icon: Icon(
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
                            backgroundColor: Color(0xff0597F2),
                            radius: 13.r,
                            child: Center(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      num += 1;
                                    });
                                  },
                                  icon: Icon(
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
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8).r,
                      child: Text("Times per Day",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16).r,
                              border: Border.all(
                                color: Color(0xff0597F2),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text("9:16 PM",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xff0597F2),
                                radius: 10.r,
                                child: Icon(
                                  FontAwesomeIcons.xmark,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Container(
                          width: 110.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16).r,
                              border: Border.all(
                                color: Color(0xff0597F2),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16).r,
                                  child: Text("New time",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
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
                      child: Divider(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Repetition",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 140.w,
                        ),
                        Text("Different days",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right_sharp))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Is taken in",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 165.w,
                        ),
                        Text("Add Days",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right_sharp))
                      ],
                    )
                  
                 , 
                 
                  ],
                ),
                ),
                ),
                );
  }
}
