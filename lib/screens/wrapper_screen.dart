import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evoting/components/main_app_bar.dart';
import 'package:evoting/constants/color.dart';
import 'package:evoting/constants/widget.dart';
import 'package:evoting/screens/history_screen.dart';
import 'package:evoting/screens/home_screen.dart';
import 'package:evoting/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({Key? key}) : super(key: key);

  @override
  _WrapperScreenState createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  List pages = [
    {
      'title': 'History',
      'body': HistoryScreen(),
    },
    {
      'title': 'Dashboard',
      'body': HomeScreen(),
    },
    {
      'title': 'Profile',
      'body': ProfileScreen(),
    },
  ];

  int currentPage = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: primaryColor,
        items: navbarIcons,
        index: this.currentPage,
        onTap: (index) {
          setState(() {
            this.currentPage = index;
          });
        },
      ),
      appBar: mainAppBar(this.pages[this.currentPage]['title']),
      body: this.pages[this.currentPage]['body'],
    );
  }
}
