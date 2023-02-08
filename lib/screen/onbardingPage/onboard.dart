import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            child: Container(
              margin: EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: const Text("Pay.able",
                  style: TextStyle(
                      fontSize: 75,
                      color: primaryColor,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            child: const Text("financial dreams deliver",
                style: TextStyle(
                    fontSize: 25,
                    color: primaryColor,
                    fontWeight: FontWeight.w100)),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: const Text("Receive.Hold.Pay",
                style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(153, 0, 0, 0),
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: const Text(
              "The safer and easy \n way to receive and pay with Payable",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
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
                  Get.off(() => SignIn());
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 80),
            child: TextButton(
              onPressed: () {
                Get.off(()=>SignUp());
              },
              child: Text(
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
