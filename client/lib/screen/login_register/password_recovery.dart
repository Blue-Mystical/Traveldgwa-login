import 'package:flutter/material.dart';
import 'package:home_and_login/constants.dart';
import 'package:home_and_login/screen/login_register/components/body.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PasswordRecoveryBody(),

    );
  }
}