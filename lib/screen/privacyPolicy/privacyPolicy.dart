import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class privacyPolicy extends StatefulWidget {
  const privacyPolicy({super.key});

  @override
  State<privacyPolicy> createState() => _privacyPolicyState();
}

class _privacyPolicyState extends State<privacyPolicy> {
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
          "Privacy  Policy",
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
              Text("Privacy Policy ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 72, 111, 177),
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text('A. Privacy policy 1',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('B. Privacy policy 2',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('C. Privacy policy 3',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('D. Privacy policy 4',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('E. Privacy policy 5',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend lorem ac leo pellentesque pellentesque. Suspendisse tempus nibh non leo convallis, in bibendum nulla lacinia. Nullam vel lobortis lorem. Donec ut justo eget mauris finibus iaculis. Etiam eu orci non neque congue hendrerit et eu leo.'),
              Text('F. Privacy policy 6',
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
