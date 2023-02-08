import 'package:flutter/material.dart';
import 'package:get/get.dart';

const primaryColor = Colors.green;
<<<<<<< HEAD
const backGroundColor = Color.fromARGB(255, 230, 241, 230);
=======
>>>>>>> 7d06be78d792b08e020b0a8defbb87d527f2f6ea

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please enter your password";
const String kRepassNullError = "Confirm your password";
const String kShortPassError = "Password is too short";
const String kLongPassError = "Password is too long";
const String kShortphoneError = "Phone number  must be 10 digits";
const String kLongphoneError = "Phone number  must be 10 digits";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please enter your name";
const String kNamelShortError = "Name must be minimum of 3 characters";
const String kNamelLognError = "Name must be maximum of 50 characters";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";
const String Kloading = "Loading...";
const String KotpError = "Please enter the otp code";
void showSnackBar(String text) {
  Get.rawSnackbar(
    messageText: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
    snackStyle: SnackStyle.FLOATING,
    backgroundColor: primaryColor,
  );
}

const headingStyle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: primaryColor),
  );
}
