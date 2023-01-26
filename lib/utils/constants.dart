import 'package:flutter/material.dart';
const primaryColor=Colors.green;









final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "please enter your email";
const String kInvalidEmailError = "please enter valid email";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password is too short";
const String kLongPassError = "Password is too long";
const String kShortphoneError = "Phone Number  is too short";
const String kLongphoneError = "Phone Number is too long";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please enter your name";
const String kNamelShortError = "Name must be 3 and above digits";
const String kNamelLognError = "Name must be less than 50 digits";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";