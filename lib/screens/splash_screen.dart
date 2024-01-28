import 'dart:async';

import 'package:flutter/material.dart';
import 'package:route_app_one/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, HomeScreen.route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/splash_screen.png'),
          ),
        ),
      ),
    );
  }
}
