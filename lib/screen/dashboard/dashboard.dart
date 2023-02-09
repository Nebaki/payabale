import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:payabale/utils/constants.dart';

import '../deposit/deposit.dart';
import '../requestPayment/requestPayment.dart';
import '../withdrawTo/withdraw.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Neba.jpeg'),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Good morning,'),
                          Text(
                            ' Andualem',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'Tue ,14 january',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.notifications_on,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.fromLTRB(15, 40, 15, 30),
                    height: 150,
                  ),
                  Positioned(
                      left: 30,
                      right: 30,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Up by +0% from last month',
                              style: TextStyle(color: primaryColor),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      top: 70,
                      left: 20,
                      child: Text(
                        'My balance',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      )),
                  Positioned(
                      top: 90,
                      left: 20,
                      child: Text(
                        '\$120,000,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => Get.to(() => Withdraw()),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: backGroundColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.outbond,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Withdraw')
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.to(() => RequestPayment()),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: backGroundColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.request_quote,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Request')
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.to(() => Deposit()),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: backGroundColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.save_sharp,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Deposit')
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'More operations',
                              style:
                                  TextStyle(fontSize: 20, color: primaryColor),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 20,
                              ),
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                color: primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 15, bottom: 5),
                  alignment: Alignment.topLeft,
                  child: Text('Transactions')),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.all(15),
                                child:
                                    Icon(Icons.outbond, color: primaryColor)),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Withdraw'),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text('\$3000'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.all(15),
                                child:
                                    Icon(Icons.receipt, color: primaryColor)),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Received'),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text('\$300'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.all(15),
                                child: Icon(Icons.save_sharp,
                                    color: primaryColor)),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Deposited'),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text('\$500'),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
