import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:payabale/utils/constants.dart';
import 'package:payabale/utils/keyboard.dart';

import '../../utils/themes.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String? phone;
  String? password;
  bool _passwordVisible = false;
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: const Text("Pay.Able",
                  style: TextStyle(
                      fontSize: 75,
                      color: primaryColor,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text("financial dreams deliver",
                  style: TextStyle(
                      fontSize: 25,
                      color: primaryColor,
                      fontWeight: FontWeight.w100)),
            ),
            const Expanded(
              child: SizedBox(
                height: 30,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 30),
                child: const Text("Sign in \nto Account",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.only(left: 30),
                child: const Text(
                    "Sign in with username or email \nand password to use your account",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300))),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: buildPhoneFormField()),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: buildPasswordFormField()),
            Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
                child: Text("Forgot password?")),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
              width: double.infinity,
              height: 56,
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: primaryColor,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      KeyboardUtil.hideKeyboard(context);
                    }
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don't have an account?"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Create account",
                    style: TextStyle(color: primaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_passwordVisible,
      onSaved: (newValue) => password = newValue,
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
        labelText: "Password",
        hintText: "Enter your password",
        focusColor: primaryColor,
        border: inputDecorationTheme().border,
        enabledBorder: inputDecorationTheme().enabledBorder,
        focusedBorder: inputDecorationTheme().focusedBorder,
        contentPadding: inputDecorationTheme().contentPadding,
        floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior,
        suffixIcon: IconButton(
          icon: _passwordVisible
              ? const Icon(
                  Icons.visibility,
                  color: primaryColor,
                )
              : const Icon(
                  Icons.visibility_off,
                ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phone = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          KeyboardUtil.hideKeyboard(context);
          return kPhoneNumberNullError;
        } else if (value.length < 10) {
          KeyboardUtil.hideKeyboard(context);
          return kShortphoneError;
        } else if (value.length > 13) {
          KeyboardUtil.hideKeyboard(context);
          return kLongphoneError;
        }
        KeyboardUtil.hideKeyboard(context);
        return null;
      },
      decoration: InputDecoration(
          labelText: "Phone",
          hintText: "Enter your phone",
          focusColor: primaryColor,
          suffixIcon: const Icon(
            Icons.phone,
            color: primaryColor,
          ),
          border: inputDecorationTheme().border,
          enabledBorder: inputDecorationTheme().enabledBorder,
          focusedBorder: inputDecorationTheme().focusedBorder,
          contentPadding: inputDecorationTheme().contentPadding,
          floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior),
    );
  }
}
