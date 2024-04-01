import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/widgets/rect_shw_tasks.dart';
import 'package:care_app_two/screens/widgets/timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowAllTasks extends StatelessWidget {
  const ShowAllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbarWithLogo(context),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8,top: 20).r,
          child: ListView(
            
            children: [
              Column(
                children: [

 Stack(
  clipBehavior: Clip.none,
        children:[ 
        const  Timer(),
          Positioned(
            top: 190.r,
            left: 80.r,
            child: CircleAvatar(backgroundColor: Color(0xff0075FE),
                    radius: 30.r,
                    child: CircleAvatar(backgroundColor: Colors.white,radius: 28.r,
                    child: CircleAvatar(backgroundColor: Color(0xff0075FE),radius: 23.r,
                    child: Icon(Icons.add, color: Colors.white,),),),
                    ),
          ),
      ]),
              Padding(
                padding: const EdgeInsets.only(top: 50).r,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: Text(
                        'In  Progress',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff99C8FF),
                      child: Text('3'),
                      radius: 15,
                    ),
                  ],
                ),
              ),
              RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
              RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
              RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16).r,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffAEE4E6),
                      child: Text('3'),
                      radius: 15,
                    ),
                  ],
                ),
              ),
              RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
             
            ],
          ),
        
                ],
              
              
       )
      
      
        )
      )
        ,
    );
  }
}
