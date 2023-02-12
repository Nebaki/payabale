import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payabale/components/customButton.dart';
import 'package:payabale/utils/constants.dart';
import 'package:payabale/utils/keyboard.dart';

import '../../mainPage.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  bool loading = false;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    pin6FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  final _formKey = GlobalKey<FormState>();
  final _otp1 = TextEditingController();
  final _otp2 = TextEditingController();
  final _otp3 = TextEditingController();
  final _otp4 = TextEditingController();
  final _otp5 = TextEditingController();
  final _otp6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autofocus: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  controller: _otp1,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    }
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  focusNode: pin2FocusNode,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  controller: _otp2,
                  onChanged: (value) => nextField(value, pin3FocusNode),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    }
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  focusNode: pin3FocusNode,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  controller: _otp3,
                  onChanged: (value) => nextField(value, pin4FocusNode),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    }
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  focusNode: pin4FocusNode,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  controller: _otp4,
                  onChanged: (value) => nextField(value, pin5FocusNode),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    }
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  focusNode: pin5FocusNode,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  controller: _otp5,
                  onChanged: (value) => nextField(value, pin6FocusNode),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    }
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    focusNode: pin6FocusNode,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    controller: _otp6,
                    onChanged: (value) {
                      if (value.length == 1) {
                        pin6FocusNode!.unfocus();
                      }
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          buildTimer(),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            const Text('Didn\'t get the code ?',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(178, 0, 0, 0))),
            const SizedBox(width: 10),
            const Text('Resend code',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 17,
                ))
          ]),
          const SizedBox(
            height: 50,
          ),
          Container(
              width: double.infinity,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
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
                      Get.off(() => const MainPage());
                      showSnackBar("Registered succesfully");
                    });
                  }
                },
                child: loading
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            loading = true;
                          });
                        },
                        child: const LoadingButton())
                    : InkWell(
                        onTap: () {
                          setState(() {
                            loading = false;
                          });
                        },
                        child: const ContinueButton()),
              )),
        ],
      ),
    );
  }
}

Row buildTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Text("This sesion will end in ",
          style: TextStyle(fontSize: 17, color: Color.fromARGB(178, 0, 0, 0))),
      TweenAnimationBuilder(
        tween: Tween(begin: 60.0, end: 0.0),
        duration: const Duration(seconds: 60),
        builder: (_, dynamic value, child) => Text(
          "00:${value.toInt()}",
          style: const TextStyle(color: primaryColor, fontSize: 17),
        ),
      ),
    ],
  );
}
