import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'component/Form.dart';
=======
import 'package:payabale/screen/signIn/component/form.dart';
>>>>>>> 7d06be78d792b08e020b0a8defbb87d527f2f6ea

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
    return const Scaffold(body: SingleChildScrollView(child: SignInForm()));
  }
}
