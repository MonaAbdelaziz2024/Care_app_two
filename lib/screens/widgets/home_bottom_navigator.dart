
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeCurvedNavigationBar extends StatelessWidget {
  const HomeCurvedNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationDuration: Duration(milliseconds: 100),
      items: [
        
      Icon(Icons.home_outlined),
       Icon(Icons.document_scanner_outlined),
        Icon(Icons.add),
          Icon(Icons.chat_outlined),
          Icon(Icons.settings),
      ]
    );
  }
}
/* */ 