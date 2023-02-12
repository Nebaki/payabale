import 'package:flutter/material.dart';
import 'package:payabale/utils/constants.dart';

import '../../utils/keyboard.dart';
import '../../utils/themes.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Link Cards',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Card(
                color: primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 10),
                      child: const Text(
                        'Master card',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 15),
                      color: Colors.orange,
                      height: 20,
                      width: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 15),
                      child: const Text(
                        '12345678909876',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 15),
                          child: Column(
                            children: const [
                              Text(
                                'Cardholder name',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Nebyu hussein',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: const [
                            Text(
                              'Valid To',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '24-25 ',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.circle,
                              color: Colors.orange,
                            ),
                            Text('MASTERCARD')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 20, 0, 10),
                child: const Text(
                  'Add New Card',
                  style: TextStyle(fontSize: 25),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter 14 digit card number",
                  focusColor: primaryColor,
                  border: inputDecorationTheme().border,
                  enabledBorder: inputDecorationTheme().enabledBorder,
                  focusedBorder: inputDecorationTheme().focusedBorder,
                  contentPadding: inputDecorationTheme().contentPadding,
                  floatingLabelBehavior:
                      inputDecorationTheme().floatingLabelBehavior,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Enter card holder name',
                        floatingLabelBehavior:
                            inputDecorationTheme().floatingLabelBehavior,
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: const Card(
                          child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 15, 50, 15),
                    child: Text('Expire Date'),
                  ))),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 60, 15),
                      child: Text('CCV '),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: const Text(
                  "Add Card ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
