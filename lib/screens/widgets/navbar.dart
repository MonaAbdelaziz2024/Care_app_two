// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:care_app_two/screens/chat_bot_page/chatbot_view.dart';
import 'package:care_app_two/screens/homepage/home_view_body.dart';
import 'package:care_app_two/screens/scanPage/scan_view.dart';
import 'package:care_app_two/screens/setting/setting_view.dart';
import 'package:flutter/material.dart';

class FluidNavBar extends StatefulWidget {
  @override
  _FluidNavBarState createState() => _FluidNavBarState();
}

class _FluidNavBarState extends State<FluidNavBar> {
  int _selectedIndex = 0;
  List<dynamic> pages = [
    const HomeViewBody(),
    const ScanView(),
    const ChatBotView(),
    const SettingView(),
  ];


  List<NavItem> _navItems = [
    NavItem(Icons.home_outlined, "HomeViewBody"),
    NavItem(Icons.document_scanner_outlined, "ScanView"),
    NavItem(Icons.chat_outlined, "ChatBotView"),
    NavItem(Icons.settings_outlined, "SettingView"),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
       // clipBehavior: Clip.antiAliasWithSaveLayer,
       shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25),),),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        
        notchMargin: 4,
        surfaceTintColor:Colors.blue[800],
        //color: Colors.yellow[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _navItems.map((item) {
            var index = _navItems.indexOf(item);
            return IconButton(
              onPressed: () => _onNavItemTapped(index),
              icon: Icon(
                item.icon,
                color: _selectedIndex == index ? Colors.yellow : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class NavItem {
  IconData icon;
  String title;

  NavItem(this.icon, this.title);
}
