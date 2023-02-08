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
                ))
          ],
        ),
      ),
    );
  }
}
