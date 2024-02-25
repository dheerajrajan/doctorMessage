// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:message/view/bottom/home_screen.dart';

import 'package:message/view/bottom/profile_screen.dart';
import 'package:message/view/bottom/recent_screen.dart';
import 'package:message/view/chat_tab/chat_tab.dart';

class NaviGation extends StatefulWidget {
  const NaviGation({super.key});

  @override
  State<NaviGation> createState() => _NaviGationState();
}

class _NaviGationState extends State<NaviGation> {
  int indexValue=0;

  List bottom=[HomeScreen(),RecentScreen(),ChatTab(),ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:bottom[indexValue],
       bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            indexValue=index;
            setState(() {
              
            });
        
          },
          currentIndex: indexValue,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.schedule),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: ""),
          ]
        ),
        
    );
  }
}