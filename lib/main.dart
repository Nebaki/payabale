import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payabale/screen/cardManagment/cardManagment.dart';
import 'package:payabale/screen/completeProfile/completeProfile.dart';
import 'package:payabale/screen/linksToBank/linksToBank.dart';
import 'package:payabale/screen/mainPage.dart';
import 'package:payabale/screen/payableCard/payableCard.dart';
import 'package:payabale/screen/splash/splash.dart';
import 'package:payabale/screen/test.dart';
import 'package:payabale/screen/transaction.dart';
import 'package:payabale/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(canvasColor: Color.fromARGB(255, 210, 246, 211)),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
