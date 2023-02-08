import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:payabale/screen/privacyPolicy/privacyPolicy.dart';
import 'package:payabale/screen/termsAndCondition/termsAndCondition.dart';
import 'package:payabale/utils/constants.dart';

import 'fees/fees.dart';
import 'help/help.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nebyu",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text('Setting', style: TextStyle(fontSize: 20))),
            Container(
                margin: EdgeInsets.all(8),
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Profile',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Icon(Icons.security_sharp, color: primaryColor),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Verification',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Expanded(child: Container()),
                            Text(
                              'Completed',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Icon(Icons.lock_outline, color: primaryColor),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Authenticate Transaction(OTP)',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                        child: Row(
                          children: [
                            Icon(Icons.notifications_outlined,
                                color: primaryColor),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Notification',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text('About us', style: TextStyle(fontSize: 20)),
                    Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_drop_down_circle_sharp,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('About us',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () => Get.to(() => privacyPolicy()),
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.privacy_tip_outlined,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('Privacy Policy',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => Get.to(() => TermsAndCondition()),
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.table_chart_outlined,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('Terms & conditions',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => Get.to(() => Fees()),
                              child: Container(
                                margin: EdgeInsets.only(top: 15, bottom: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.credit_card,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('Fees',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            InkWell(
              onTap: () => Get.to(() => Help()),
              child: Container(
                margin: EdgeInsets.all(8),
                child: Card(
                  child: Container(
                    margin: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.help,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Help',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
