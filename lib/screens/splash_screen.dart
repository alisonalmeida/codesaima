// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:codesaima/consts.dart';
import 'package:codesaima/main.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then((value) =>
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(title: kAppName))));

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
            child: Image.asset(kPathMainLogoCodesaima, fit: BoxFit.cover)),
      ),
    );
  }
}
