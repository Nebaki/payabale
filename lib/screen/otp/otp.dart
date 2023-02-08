import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:payabale/utils/constants.dart';

import 'component/otpform.dart';

=======
import 'package:get/get.dart';
import 'package:payabale/screen/otp/component/otpForm.dart';
import 'package:payabale/utils/constants.dart';

>>>>>>> 7d06be78d792b08e020b0a8defbb87d527f2f6ea
class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 150),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "OTP \nVerify!",
                    style: headingStyle,
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter the verification code we have sent at",
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(178, 0, 0, 0)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "+251932501353",
                        style: TextStyle(fontSize: 17, color: primaryColor),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.edit, color: primaryColor, size: 15)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                FractionallySizedBox(
                  child: OtpForm(),
                  widthFactor: 1,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 7d06be78d792b08e020b0a8defbb87d527f2f6ea
