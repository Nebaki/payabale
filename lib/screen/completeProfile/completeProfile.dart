import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';
import '../../utils/themes.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String password = "";
  String? conform_password;
  String? firstName;
  String? middleName;
  String? lastName;
  String? Phone;
  String? role;
  bool remember = false;
  bool _isloading = false;
  final List<String?> errors = [];

  bool _passwordVisible = false;
  bool _RepasswordVisible = false;
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
          "Account Profile",
          style: TextStyle(color: primaryColor),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(height: 30),
              buildFirstNameFormField(),
              const SizedBox(height: 10),
              buildMiddleNameFormField(),
              const SizedBox(height: 10),
              buildLastNameFormField(),
              const SizedBox(height: 10),
              buildEmailFormField(),
              const SizedBox(height: 10),
              buildPhoneNumberFormField(),
              const SizedBox(height: 10),
              buildPasswordFormField(),
              const SizedBox(height: 10),
              buildConformPassFormField(),
              const SizedBox(height: 10),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'CREATE ACCOUNT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        onSaved: (newValue) => Phone = newValue,
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

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
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
          labelText: "First Name",
          hintText: "Enter your First name",
          suffixIcon: const Icon(
            Icons.person_2,
            color: primaryColor,
          ),
          border: inputDecorationTheme().border,
          enabledBorder: inputDecorationTheme().enabledBorder,
          focusedBorder: inputDecorationTheme().focusedBorder,
          contentPadding: inputDecorationTheme().contentPadding,
          floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior),
    );
  }

  TextFormField buildMiddleNameFormField() {
    return TextFormField(
      onSaved: (newValue) => middleName = newValue,
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
          labelText: "Middle Name",
          hintText: "Enter your middle name",
          suffixIcon: const Icon(
            Icons.person_2,
            color: primaryColor,
          ),
          border: inputDecorationTheme().border,
          enabledBorder: inputDecorationTheme().enabledBorder,
          focusedBorder: inputDecorationTheme().focusedBorder,
          contentPadding: inputDecorationTheme().contentPadding,
          floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
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
          labelText: "Last Name",
          hintText: "Enter your last name",
          suffixIcon: const Icon(
            Icons.person_2,
            color: primaryColor,
          ),
          border: inputDecorationTheme().border,
          enabledBorder: inputDecorationTheme().enabledBorder,
          focusedBorder: inputDecorationTheme().focusedBorder,
          contentPadding: inputDecorationTheme().contentPadding,
          floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: !_passwordVisible,
      onSaved: (newValue) {
        password = newValue!;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 4) {
          return kShortPassError;
        } else if (value.length >= 25) {
          return kLongPassError;
        }

        return null;
      },
      maxLength: 25,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        border: inputDecorationTheme().border,
        enabledBorder: inputDecorationTheme().enabledBorder,
        focusedBorder: inputDecorationTheme().focusedBorder,
        contentPadding: inputDecorationTheme().contentPadding,
        floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior,
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: !_RepasswordVisible,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 25,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
        conform_password = value;
      },
      decoration: InputDecoration(
          labelText: "Confirm password",
          hintText: "Confirm your password",
          suffixIcon: IconButton(
            icon: Icon(
              _RepasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _RepasswordVisible = !_RepasswordVisible;
              });
            },
          ),
          border: inputDecorationTheme().border,
          enabledBorder: inputDecorationTheme().enabledBorder,
          focusedBorder: inputDecorationTheme().focusedBorder,
          contentPadding: inputDecorationTheme().contentPadding,
          floatingLabelBehavior: inputDecorationTheme().floatingLabelBehavior),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        if (value!.isNotEmpty) {
          if (!emailValidatorRegExp.hasMatch(value)) return kInvalidEmailError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email address",
          suffixIcon: const Icon(
            Icons.email_outlined,
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
