
import 'package:care_app_two/helper/constant.dart';
import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(top: 21),
                child: IconButton(
                  onPressed: onPressed,
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff7E869E).withOpacity(.25),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: kTextColor,
                      size: 18,
                    ),
                  ),
                ),
              )
            : const SizedBox(
                width: 80,
              ),
        //SizedBox(width: 80,),
        Padding(
          padding: const EdgeInsets.only(top: 21, left: 100),
          child: Image.asset(
            kLogo,
          ),
        ),

        // SvgPicture.asset('assets/images/image4.svg')
      ],
    );
  }
}
