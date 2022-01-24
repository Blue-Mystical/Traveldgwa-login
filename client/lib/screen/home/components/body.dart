import 'package:flutter/material.dart';
import 'package:home_and_login/constants.dart';

import 'package:home_and_login/screen/home/components/homepage.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // it enables scrolling on smaller device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Home(),
          SizedBox(height: paddingValue),
        ],
      ),
    );
  }
}
