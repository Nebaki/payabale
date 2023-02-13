import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payabale/screen/signUp/signUp.dart';
import 'package:payabale/utils/constants.dart';
import 'package:payabale/utils/keyboard.dart';

import '../../../utils/themes.dart';
import '../../mainPage.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool _passwordVisible = false;
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: const Text("Pay.able",
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
            const SizedBox(
              height: 30,
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
                child: buildEmailFormField()),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: buildPasswordFormField()),
            Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: const Text("Forgot password?")),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
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
                      Get.off(() => MainPage());
                    }
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.off(() => const SignUp());
                    },
                    child: const Text(
                      "Create account",
                      style: TextStyle(color: primaryColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_passwordVisible,
      onSaved: (newValue) => password = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 4) {
          return kShortPassError;
        } else if (value.length >= 25) {
          return kLongPassError;
        } else if (value.isNotEmpty) {
          KeyboardUtil.hideKeyboard(context);
        }
        return null;
      },
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

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        if (!emailValidatorRegExp.hasMatch(value!)) return kInvalidEmailError;
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email address",
          suffixIcon: Icon(Icons.mail),
          border: inputDecorationTheme().border,
          enabledBorder: inputDecorationTheme().enabledBorder,
          focusedBorder: inputDecorationTheme().focusedBorder,
          contentPadding: inputDecorationTheme().contentPadding,
          floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior),
    );
  }
}
