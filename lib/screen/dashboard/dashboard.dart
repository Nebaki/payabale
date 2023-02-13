import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payabale/utils/constants.dart';

import '../deposit/deposit.dart';
import '../notification/notification.dart';
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
      extendBody: true,
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Neba.jpeg'),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Text('Good morning,'),
                        Text(
                          ' Andualem',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Text(
                      'Tue ,14 january',
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () => Get.to(() => const Notifications()),
                    child: const Icon(
                      Icons.notifications,
                      color: primaryColor,
                    ),
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
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.fromLTRB(15, 40, 15, 30),
                  height: 150,
                ),
                Positioned(
                    left: 30,
                    right: 30,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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
                const Positioned(
                    top: 70,
                    left: 40,
                    child: Text(
                      'My balance',
                      style: TextStyle(
                          color: Color.fromARGB(227, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
                const Positioned(
                    top: 100,
                    left: 40,
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
              margin: EdgeInsets.only(top: 20, left: 20, right: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => const Withdraw()),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: backGroundColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.outbond,
                                color: primaryColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Withdraw',
                                  style: TextStyle(color: Colors.black45))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => const RequestPayment()),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: backGroundColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.request_quote,
                                color: primaryColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Request',
                                  style: TextStyle(color: Colors.black45))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => const Deposit()),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: backGroundColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.save_sharp,
                                color: primaryColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Deposit',
                                  style: TextStyle(color: Colors.black45))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'More operations',
                          style: TextStyle(fontSize: 17, color: primaryColor),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            right: 20,
                          ),
                          child: const Icon(
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
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 210, 246, 211),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        'Transaction',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          child: MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.all(15),
                                          child: const Icon(Icons.outbond,
                                              color: primaryColor)),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Withdraw',
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                      Expanded(child: Container()),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 15.0),
                                        child: Text(
                                          '\$3000',
                                          style:
                                              TextStyle(color: Colors.black45),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.all(15),
                                          child: const Icon(Icons.receipt,
                                              color: primaryColor)),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Received',
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                      Expanded(child: Container()),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 15.0),
                                        child: Text(
                                          '\$300',
                                          style:
                                              TextStyle(color: Colors.black45),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.all(15),
                                          child: const Icon(Icons.save_sharp,
                                              color: primaryColor)),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Deposited',
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                      Expanded(child: Container()),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 15.0),
                                        child: Text(
                                          '\$500',
                                          style:
                                              TextStyle(color: Colors.black45),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
