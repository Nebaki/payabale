import 'package:flutter/material.dart';
import 'package:payabale/components/customButton.dart';
import 'package:payabale/screen/otp/otp.dart';
import 'package:payabale/screen/signIn/signIn.dart';
import 'package:payabale/utils/constants.dart';
import 'package:payabale/utils/keyboard.dart';
import 'package:payabale/utils/themes.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? phone;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Form(
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
                      child: const Text("Registration",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: const Text("Fill the form and relax!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300))),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      child: builduserNameFormField()),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      child: buildPhoneNumberFormField()),
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
                            setState(() {
                              loading = true;
                            });
                            Future.delayed(const Duration(seconds: 3), () {
                              Get.off(() => OtpScreen());
                            });
                          }
                        },
                        child: loading
                            ? const LoadingButton()
                            : const ContinueButton()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Get.off(() => const SignIn());
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: primaryColor),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))),
    ));
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        onSaved: (newValue) => phone = newValue,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return kPhoneNumberNullError;
          } else if (value.length < 10) {
            return kShortphoneError;
          } else if (value.length > 13) {
            return kLongphoneError;
          }
          return null;
        },
        maxLength: 10,
        decoration: InputDecoration(
            labelText: "Phone number",
            hintText: "Enter your phone number",
            suffixIcon: const Icon(
              Icons.phone,
              color: primaryColor,
            ),
            border: inputDecorationTheme().border,
            enabledBorder: inputDecorationTheme().enabledBorder,
            focusedBorder: inputDecorationTheme().focusedBorder,
            contentPadding: inputDecorationTheme().contentPadding,
            floatingLabelBehavior:
                inputDecorationTheme().floatingLabelBehavior));
  }

  TextFormField builduserNameFormField() {
    return TextFormField(
      onSaved: (newValue) => username = newValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return kNamelNullError;
        } else if (value.length < 3) {
          return kNamelShortError;
        } else if (value.length > 50) {
          return kNamelLognError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Username",
          hintText: "Enter your username",
          suffixIcon: const Icon(
            Icons.person,
            color: primaryColor,
          ),
          border: inputDecorationTheme().border,
          enabledBorder: inputDecorationTheme().enabledBorder,
          focusedBorder: inputDecorationTheme().focusedBorder,
          contentPadding: inputDecorationTheme().contentPadding,
          floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 7d06be78d792b08e020b0a8defbb87d527f2f6ea
