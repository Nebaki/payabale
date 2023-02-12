import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class Deposit extends StatefulWidget {
  const Deposit({super.key});

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Deposit From",
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
              margin: const EdgeInsets.only(top: 40, left: 15),
              child: const Text('Select Deposit \nMethod',
                  style: TextStyle(color: primaryColor, fontSize: 20)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text('Bank account',
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
                              padding: const EdgeInsets.all(3),
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
                                  'Fund your wallet',
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
                        color: const Color.fromARGB(255, 41, 80, 209),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(3),
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
                                  'Fund your wallet',
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
                        color: const Color.fromARGB(255, 118, 33, 142),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(3),
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
                                  'Fund your wallet',
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
                        color: const Color.fromARGB(255, 130, 103, 93),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(3),
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
                                  'Fund your wallet',
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
