
import 'package:care_app_two/screens/chat_bot_page/chatbot_view.dart';
import 'package:care_app_two/screens/homepage/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key, this.ontap
  });
    final void  ontap;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
       animationDuration: const Duration(milliseconds: 100),
        items: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
          },
          child: Icon(Icons.home_outlined),
        ),
        
         Icon(Icons.document_scanner_outlined),
          Icon(Icons.add),
          GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ChatBotView();
                  },
                ),
              );
          },
          child: Icon(Icons.chat_outlined),
        ),
           
            Icon(Icons.settings),
        ]
      /*items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: ''),
      ],*/
    );
  }
}
