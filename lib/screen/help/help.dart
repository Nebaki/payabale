import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:payabale/utils/constants.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
          "Help",
          style: TextStyle(color: primaryColor),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                children: [
                  Icon(
                    Icons.flag_circle,
                    size: 30,
                    color: primaryColor,
                  ),
                  Text(
                    'PayAble',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.menu_open_sharp, size: 30)
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.cloud_circle_outlined,
                  size: 30,
                  color: primaryColor,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Text(
                'Hi ,how can we help you?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: primaryColor),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text('Enter the search item here ...')),
                )),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.rocket_launch,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Getting Started',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 95, 24, 201),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.change_circle,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text('Sending and receiving money',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 179, 18, 190),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.card_membership,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('PayAble card ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.attach_money_rounded,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Adding money',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
