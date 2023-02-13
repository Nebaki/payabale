import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:payabale/screen/addCard/addCard.dart';
import 'package:payabale/screen/cardManagment/cardManagment.dart';
import 'package:payabale/screen/profile.dart';
import 'package:payabale/screen/transaction.dart';
import 'package:payabale/utils/constants.dart';

import 'dashboard/dashboard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [
    const Dashboard(),
    const Transaction(),
    const CardManagment(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: ontap,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: primaryColor,
              unselectedItemColor: Colors.grey.withOpacity(0.5),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.transfer_within_a_station), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.payment_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: '')
              ]),
        ),
      ),
    );
  }
}
