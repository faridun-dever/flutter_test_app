// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/home_page.dart';
import 'package:flutter_test_app/pages/login_page.dart';
import 'package:flutter_test_app/pages/main_page.dart';
import 'package:flutter_test_app/pages/signup_page.dart';
import 'package:flutter_test_app/style/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(
          fontFamily: "Urbanist", scaffoldBackgroundColor: AppColor.bgColor),
      routes: {
        // '/': (context) => LoginPage(),
        // '/home': (context) => HomePage(),
        // '/sign_up': (context) => SignUpPage(),
        // '/main': (context) => MainPage(),
      },
    );
  }
}
