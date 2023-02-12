import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:payabale/screen/addCard/addCard.dart';
import 'package:payabale/screen/profile.dart';
import 'package:payabale/screen/transaction.dart';

import 'dashboard/dashboard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const Dashboard(),
    const Transaction(),
    const AddCard(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabItems[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 30,
        showElevation: false,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.home_rounded),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.bar_chart),
            title: const Text('Transaction'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.calendar_today_outlined),
            title: const Text('Detail'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
