import 'package:flutter/material.dart';
import 'package:home_and_login/constants.dart';
import 'package:home_and_login/screen/login_register/components/body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBody(),

    );
  }
}