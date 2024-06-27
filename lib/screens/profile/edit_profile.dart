// ignore_for_file: must_be_immutable

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18).r,
          child: ListView(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // SizedBox(width: 2.w,),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      color: Colors.black,
                      Icons.arrow_back_ios_new,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 74.w,
                  ),
                  Center(
                    child: Text(
                      'Edit Profile',
                      textAlign: TextAlign.center,
                      style: Styles.Style20.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 11.h,
              ),
              Container(
                width: 328.w,
                height: 80.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12).r,
                    color: const Color(0xfff6f6f6)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8).r,
                      child: CircleAvatar(
                        radius: 20.r,
                        child: Image.asset(
                          "assets/images/Ellipse 144.png",
                          width: 48.w,
                          height: 48.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Ahmed Anwar",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 100.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7).r,
                            color: const Color(0xff0074fe)),
                        child: Center(
                          child: Text("change name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              EditProfileCotainer(
                text: 'Email',
              ),
              EditProfileCotainer(
                text: 'Birthdate',
              ),
              EditProfileCotainer(
                text: 'Gender',
              ),
              EditProfileCotainer(
                text: 'Height',
              ),
              EditProfileCotainer(
                text: 'Weight',
              ),
              EditProfileCotainer(
                text: 'The Disease',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18).r,
                child: GestureDetector(
                  child: Container(
                    width: 230.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff7E7E7E)),
                        borderRadius: BorderRadius.circular(17),
                        color: const Color(0xffc2c2c2)),
                    child: Center(
                      child: Text("Confirm",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EditProfileCotainer extends StatelessWidget {
  EditProfileCotainer({
    super.key,
    required this.text,
    this.initialValue,
  });
  String text;
  String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 8).r,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8).r,
          child: Container(
            width: 362.w,
            height: 40.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12).r,
                color: const Color(0xfff6f6f6)),
            child: TextFormField(
              initialValue: initialValue,
              decoration: InputDecoration(
                // filled: true,
                fillColor: Colors.white,

                // hintText: hintText,
                hintStyle: Styles.Style14,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17).r,
                  borderSide: const BorderSide(
                    color: Color(0xffC2C2C2),
                    style: BorderStyle.solid,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17).r,
                  borderSide: const BorderSide(
                    color: Color(0xffC2C2C2),
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
