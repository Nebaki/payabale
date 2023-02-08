import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:payabale/utils/constants.dart';

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
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Neba.jpeg'),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Good morning'),
                          Text('Andualem'),
                        ],
                      ),
                      Text('Tue ,14 january')
                    ],
                  ),
                  Icon(
                    Icons.notifications_on,
                    color: primaryColor,
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
                    margin: EdgeInsets.fromLTRB(15, 40, 15, 30),
                    height: 200,
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              color: primaryColor,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
