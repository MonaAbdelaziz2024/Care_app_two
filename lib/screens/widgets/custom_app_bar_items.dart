import 'package:care_app_two/helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarItems extends StatelessWidget {
  const CustomAppBarItems({super.key, this.backIcon = false, this.onPressed});
  final bool backIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        backIcon
            ? Padding(
                padding: const EdgeInsets.only(top: 8).r,
                child: Row(children: [
                  IconButton(
                    onPressed: onPressed,
                    icon: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff7E869E).withOpacity(.25),
                        borderRadius: BorderRadius.circular(32).r,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: kTextColor,
                        size: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8, left: 110, bottom: 8).r,
                    child: Image.asset(
                      kLogo,
                    ),
                  )
                ]))
            : Padding(
                padding: const EdgeInsets.only(top: 21, left: 160).r,
                child: Image.asset(
                  kLogo,
                ),
              ),
        //SizedBox(width: 80,),

        // SvgPicture.asset('assets/images/image4.svg')
      ],
    );
  }
}
