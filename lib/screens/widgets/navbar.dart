// ignore_for_file: prefer_const_constructors

import 'package:care_app_two/screens/chat_bot_page/chatbot_view.dart';
import 'package:care_app_two/screens/homepage/home_view_body.dart';
import 'package:care_app_two/screens/scanPage/scan_view.dart';
//import 'package:care_app_two/screens/setting/setting_view.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List screens = [
    HomeViewBody(),
    ScanView(),
    ChatBotView(),
    //SettingView(),
  ];

  num currentindex = 0;
  PageController controller = PageController();

  void nextPage(index) {
    
    
    controller.jumpToPage(index);
    currentindex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[700],
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            // gradient: ,
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: BottomAppBar(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    nextPage(0);
                    setState(() {
                        
                      });
                  },
                  icon: Icon(Icons.home_outlined,
                      color:
                          currentindex == 0 ? Colors.yellow[700] : Colors.grey),
                ),
                IconButton(
                  onPressed: () {
                    nextPage(1);
                    setState(() {
                        
                      });
                  },
                  icon: Icon(Icons.document_scanner_outlined,
                      color:
                          currentindex == 1 ? Colors.yellow[700] : Colors.grey),
                ),
                IconButton(
                    onPressed: () {
                      nextPage(2);
                      setState(() {
                        
                      });
                    },
                    icon: Icon(Icons.chat_outlined,
                        color: currentindex == 2
                            ? Colors.yellow[700]
                            : Colors.grey)),
                IconButton(
                    onPressed: () {
                      nextPage(3);
                      setState(() {
                        
                      });
                    },
                    icon: Icon(Icons.settings_outlined,
                        color: currentindex == 3
                            ? Colors.yellow[700]
                            : Colors.grey)),
              ],
            ),
          ),
        ),
        body: PageView.builder(
            controller: controller,
            itemCount: screens.length,
            itemBuilder: (context, index) {
              return screens[index];
            }),
      ),
    );
  }
}
