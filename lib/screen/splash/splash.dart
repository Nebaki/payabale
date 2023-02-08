import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payabale/screen/onbardingPage/onboard.dart';
import 'package:payabale/utils/constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.off(() => const Onboard());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text("Pay.able",
                style: TextStyle(
                    fontSize: 75,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            child: const Text("financial dreams deliver",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w100)),
          ),
        ],
      ),
    );
  }
}
