import 'package:care_app_two/screens/chat_bot_page/chatbot_view.dart';
import 'package:care_app_two/screens/homepage/home_view_body.dart';
import 'package:care_app_two/screens/scanPage/scan_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBottomBar extends StatefulWidget {
  const CustomNavigationBottomBar({super.key});

  @override
  State<CustomNavigationBottomBar> createState() =>
      _CustomNavigationBottomBarState();
}

class _CustomNavigationBottomBarState extends State<CustomNavigationBottomBar> {
  List<dynamic> pages = [const HomeViewBody(),const ScanView(), const ChatBotView()];
  int indexPage = 0;

  GlobalKey<CurvedNavigationBarState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //backgroundColor: Colors.white,
        //buttonBackgroundColor: kLogoColor,
          key: globalKey,
          index: 0,
          onTap: (index) {
            setState(() {
              indexPage = index;
            });
          },
          letIndexChange: (index) => true,
          animationDuration: const Duration(milliseconds: 100),
          // animationCurve: Curves.easeIn,
          items: const [

            Icon(Icons.home_outlined),
             Icon(Icons.document_scanner_outlined),
            // Icon(Icons.add),

                Icon(Icons.chat_outlined),
           // Icon(Icons.settings),
          ]),
           body: Container(
          child: pages[indexPage],
        ),
    );
        
  }
}
/* */ 