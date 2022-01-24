import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:se_app2/Home/shuttle/s.dart';
import 'package:se_app2/Home/shuttle/search_driver.dart';
import 'package:se_app2/navigator/nav/profile/profile.dart';
import 'package:se_app2/navigator/nav.dart';

import 'package:se_app2/screen/home/home.dart';
import 'package:se_app2/screen/login_register/login.dart';
import 'package:se_app2/screen/login_register/password_recovery.dart';
import 'package:se_app2/screen/login_register/register.dart';

import 'Home/shuttle/shuttle.dart';
import 'navigator/nav.dart';
import 'package:se_app2/Home/hotel/hotel.dart';

import 'package:se_app2/constants.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        scaffoldBackgroundColor: secondaryColor,

      ),
      title: 'traveldgwa',

      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomeScreen(),
        '/register': (BuildContext context) => RegisterScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/password': (BuildContext context) => PasswordScreen(),
        '/Navi': (BuildContext context) => Nav(),
        '/airport_shuttle': (BuildContext context) => shuttle(),
        '/hotel': (BuildContext context) => hotel(),
        '/profile': (BuildContext context) => profile(),
      },
    );
  }
}
