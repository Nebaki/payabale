import 'package:flutter/material.dart';
import 'package:payabale/screen/signIn/signIn.dart';
import 'package:payabale/screen/signUp/signUp.dart';
import 'package:payabale/utils/constants.dart';
import 'package:get/get.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.asset(
                'assets/images/onb.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text("Pay.able",
                style: TextStyle(
                    fontSize: 55,
                    color: primaryColor,
                    fontWeight: FontWeight.bold)),
          ),
          const Text("financial dreams deliver",
              style: TextStyle(
                  fontSize: 25,
                  color: primaryColor,
                  fontWeight: FontWeight.w100)),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text("Receive.Hold.Pay",
                style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(153, 0, 0, 0),
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            width: double.infinity,
            height: 56,
            child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: primaryColor,
                ),
                onPressed: () {
                  Get.off(() => const SignIn());
                },
                child: const Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextButton(
              onPressed: () {
                Get.off(() => const SignUp());
              },
              child: const Text(
                "Create a new account",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
          )
        ],
      ),
    );
  }
}
