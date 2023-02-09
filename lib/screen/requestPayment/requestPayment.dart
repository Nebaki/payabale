import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';
import '../../utils/keyboard.dart';
import '../../utils/themes.dart';

class RequestPayment extends StatefulWidget {
  const RequestPayment({super.key});

  @override
  State<RequestPayment> createState() => _RequestPaymentState();
}

class _RequestPaymentState extends State<RequestPayment> {
  String? amount;
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
            "Request Payment",
            style: TextStyle(color: primaryColor),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.only(top: 50, left: 15),
              child: Text(
                'Payment Details',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: AmmountTextField()),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: PaymentForTextField()),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: descriptionTextField()),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: dueDateTextField()),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: DetailTextField()),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: RichText(
              text: TextSpan(
                text: 'Clicking ',
                style: TextStyle(color: Colors.black),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'send',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' indicates that you agree to out'),
                  TextSpan(
                      text: '\nterms and conditions',
                      style: TextStyle(decoration: TextDecoration.underline))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Text('Preview', style: TextStyle(fontSize: 20))),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    // If the button is pressed, return green, otherwise blue
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blueAccent;
                    }
                    return Colors.green;
                  }),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Text('Send', style: TextStyle(fontSize: 20))),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    // If the button is pressed, return green, otherwise blue
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blueAccent;
                    }
                    return Colors.green;
                  }),
                ),
              )
            ],
          )
        ])));
  }

  TextFormField AmmountTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => amount = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          KeyboardUtil.hideKeyboard(context);
          return kPassNullError;
        } else if (value.length < 4) {
          KeyboardUtil.hideKeyboard(context);
          return kShortPassError;
        } else if (value.length >= 25) {
          KeyboardUtil.hideKeyboard(context);
          return kLongPassError;
        } else if (value.isNotEmpty) {
          KeyboardUtil.hideKeyboard(context);
        }
        return null;
      },
      // controller: passController, //loginController.passController,
      decoration: InputDecoration(
        labelText: "Amount",
        hintText: "Enter amount",
        focusColor: primaryColor,
        border: inputDecorationTheme().border,
        enabledBorder: inputDecorationTheme().enabledBorder,
        focusedBorder: inputDecorationTheme().focusedBorder,
        contentPadding: inputDecorationTheme().contentPadding,
        floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior,
      ),
    );
  }

  TextFormField PaymentForTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => amount = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          KeyboardUtil.hideKeyboard(context);
          return kPassNullError;
        } else if (value.length < 4) {
          KeyboardUtil.hideKeyboard(context);
          return kShortPassError;
        } else if (value.length >= 25) {
          KeyboardUtil.hideKeyboard(context);
          return kLongPassError;
        } else if (value.isNotEmpty) {
          KeyboardUtil.hideKeyboard(context);
        }
        return null;
      },
      // controller: passController, //loginController.passController,
      decoration: InputDecoration(
        labelText: "Payment for",
        hintText: "Contact work",
        focusColor: primaryColor,
        border: inputDecorationTheme().border,
        enabledBorder: inputDecorationTheme().enabledBorder,
        focusedBorder: inputDecorationTheme().focusedBorder,
        contentPadding: inputDecorationTheme().contentPadding,
        floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior,
      ),
    );
  }

  TextFormField descriptionTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => amount = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          KeyboardUtil.hideKeyboard(context);
          return kPassNullError;
        } else if (value.length < 4) {
          KeyboardUtil.hideKeyboard(context);
          return kShortPassError;
        } else if (value.length >= 25) {
          KeyboardUtil.hideKeyboard(context);
          return kLongPassError;
        } else if (value.isNotEmpty) {
          KeyboardUtil.hideKeyboard(context);
        }
        return null;
      },
      // controller: passController, //loginController.passController,
      decoration: InputDecoration(
        labelText: "Description",
        hintText: "Example: June invoice ",
        focusColor: primaryColor,
        border: inputDecorationTheme().border,
        enabledBorder: inputDecorationTheme().enabledBorder,
        focusedBorder: inputDecorationTheme().focusedBorder,
        contentPadding: inputDecorationTheme().contentPadding,
        floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior,
      ),
    );
  }

  TextFormField dueDateTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => amount = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          KeyboardUtil.hideKeyboard(context);
          return kPassNullError;
        } else if (value.length < 4) {
          KeyboardUtil.hideKeyboard(context);
          return kShortPassError;
        } else if (value.length >= 25) {
          KeyboardUtil.hideKeyboard(context);
          return kLongPassError;
        } else if (value.isNotEmpty) {
          KeyboardUtil.hideKeyboard(context);
        }
        return null;
      },
      // controller: passController, //loginController.passController,
      decoration: InputDecoration(
        labelText: "Due date",
        hintText: "Example: June invoice",
        focusColor: primaryColor,
        border: inputDecorationTheme().border,
        enabledBorder: inputDecorationTheme().enabledBorder,
        focusedBorder: inputDecorationTheme().focusedBorder,
        contentPadding: inputDecorationTheme().contentPadding,
        floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior,
      ),
    );
  }

  TextFormField DetailTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => amount = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          KeyboardUtil.hideKeyboard(context);
          return kPassNullError;
        } else if (value.length < 4) {
          KeyboardUtil.hideKeyboard(context);
          return kShortPassError;
        } else if (value.length >= 25) {
          KeyboardUtil.hideKeyboard(context);
          return kLongPassError;
        } else if (value.isNotEmpty) {
          KeyboardUtil.hideKeyboard(context);
        }
        return null;
      },
      // controller: passController, //loginController.passController,
      decoration: InputDecoration(
        labelText: "Payment details",
        hintText: "Email address",
        focusColor: primaryColor,
        border: inputDecorationTheme().border,
        enabledBorder: inputDecorationTheme().enabledBorder,
        focusedBorder: inputDecorationTheme().focusedBorder,
        contentPadding: inputDecorationTheme().contentPadding,
        floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior,
      ),
    );
  }
}
