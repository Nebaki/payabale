import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Terms and Condtion",
          style: TextStyle(color: primaryColor),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PAYABLE CUSTOMER TERMS OF USE",
                  style: TextStyle(
                      color: Color.fromARGB(255, 72, 111, 177),
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text('Version4.2 ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text('February2023'),
              SizedBox(
                height: 10,
              ),
              Text('CUSTOMER TERMS OF USE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text('Please read this Terms of use carefully'),
              SizedBox(
                height: 10,
              ),
              Text('1. Terms of use 1',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('1. Terms of use 2',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('1. Terms of use 3',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('1. Terms of use 4',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('1. Terms of use 5',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('1. Terms of use 6',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.')
            ],
          ),
        ),
      ),
    );
  }
}
