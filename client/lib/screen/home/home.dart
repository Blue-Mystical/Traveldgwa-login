import 'package:flutter/material.dart';
import 'package:home_and_login/constants.dart';
import 'package:home_and_login/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),

    );
  }
}