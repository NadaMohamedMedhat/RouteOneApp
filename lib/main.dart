import 'package:flutter/material.dart';

import 'package:route_app_one/screens/android_diploma.dart';
import 'package:route_app_one/screens/fullstack_diploma.dart';
import 'package:route_app_one/screens/home_screen.dart';
import 'package:route_app_one/screens/ios_diploma.dart';
import 'package:route_app_one/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.route,
      routes: {
        SplashScreen.route: (BuildContext) => const SplashScreen(),
        HomeScreen.route: (BuildContext) =>  HomeScreen(),
        AndroidDiploma.route:(BuildContext)=>AndroidDiploma(),
        IosDiploma.route:(BuildContext)=>IosDiploma(),
        FullstackDiploma.route:(BuildContext)=>FullstackDiploma(),
      },
    );
  }
}
