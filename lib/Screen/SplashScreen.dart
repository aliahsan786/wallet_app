// ignore_for_file: prefer_const_constructors, unused_local_variable, annotate_overrides, unused_import, file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:wallet_app/Screen/HomeScreen.dart';
import 'package:wallet_app/Screen/Login.dart';
import 'package:wallet_app/Screen/NavBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Login()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //  final Duration initialDelay = Duration(seconds: 2);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        alignment: Alignment.topCenter,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/preview.png'),
              fit: BoxFit.cover),
        ),
        // child: DelayedDisplay(
        //   slidingCurve: Curves.easeInToLinear,
        //   // delay: initialDelay,
        //   child: Container(
        //     // height: 400,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage('assets/images/preview.png'),
        //         fit: BoxFit.contain,
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
