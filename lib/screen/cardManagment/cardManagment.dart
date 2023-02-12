import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:payabale/utils/constants.dart';

class CardManagment extends StatefulWidget {
  const CardManagment({super.key});

  @override
  State<CardManagment> createState() => _CardManagmentState();
}

class _CardManagmentState extends State<CardManagment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Card managment',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.fromLTRB(15, 40, 15, 10),
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'On card',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.build_circle_outlined,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Pay.able',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      '5,000',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'USD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Text(
                  'XXXX -1234',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'Expire date',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Row(
                  children: [
                    const Text(
                      '06/23',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.play_circle_outlined,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Active',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            alignment: Alignment.bottomCenter,
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15, top: 15),
                  child: TextField(
                    decoration:
                        InputDecoration(hintText: 'Apply For Virtual Card'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15, top: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'View PIN'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15, top: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Update PIN'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15, top: 15),
                  child: TextField(
                    decoration:
                        InputDecoration(hintText: 'Report as lost/stolen'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
