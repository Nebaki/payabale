import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Withdraw to",
          style: TextStyle(color: primaryColor),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 15),
              child: const Text('Where \nto send',
                  style: TextStyle(color: primaryColor, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 30),
              child: const Text('Bank account',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            ),
            Container(
              height: 600,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Card(
                        color: primaryColor,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(3),
                              margin: const EdgeInsets.all(15),
                              child: const Icon(
                                Icons.outbox_outlined,
                                color: primaryColor,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Transfer your money',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'PayAble transfer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Card(
                        color: Color.fromARGB(255, 41, 80, 209),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(3),
                              margin: const EdgeInsets.all(15),
                              child: const Icon(
                                Icons.food_bank_outlined,
                                color: primaryColor,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Transfer your money',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Wallet to bank',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Card(
                        color: Color.fromARGB(255, 118, 33, 142),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(3),
                              margin: const EdgeInsets.all(15),
                              child: const Icon(
                                Icons.wallet,
                                color: primaryColor,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Transfer your money',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Wallet to Wallet',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Card(
                        color: Color.fromARGB(255, 130, 103, 93),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(3),
                              margin: const EdgeInsets.all(15),
                              child: const Icon(
                                Icons.currency_bitcoin,
                                color: primaryColor,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Transfer your money',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Crypto transfer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
