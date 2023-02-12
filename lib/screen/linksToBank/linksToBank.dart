import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:payabale/utils/constants.dart';

class LinksToBank extends StatefulWidget {
  const LinksToBank({super.key});

  @override
  State<LinksToBank> createState() => _LinksToBankState();
}

class _LinksToBankState extends State<LinksToBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Text(
          'Link Banks Account',
          style: TextStyle(color: primaryColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white70,
            padding: EdgeInsets.only(left: 30),
            height: 150,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 143, 205, 145),
                      borderRadius: BorderRadius.circular(15)),
                  child: Icon(
                    Icons.person,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Link New Account',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Bank account',
            style: TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: backGroundColor),
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.house_siding_outlined,
                    color: primaryColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bank Name',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'checking -9560',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      )
                    ],
                  ),
                )
             
           ,  Icon(Icons.menu_open) ],
            ),
          )
        ],
      ),
    );
  }
}
