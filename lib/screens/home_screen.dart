import 'package:flutter/material.dart';
import 'package:route_app_one/ReusableComponents/custom_appbar.dart';
import 'package:route_app_one/ReusableComponents/diploma_widget.dart';
import 'package:route_app_one/screens/android_diploma.dart';
import 'package:route_app_one/screens/fullstack_diploma.dart';
import 'package:route_app_one/screens/ios_diploma.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'HomeScreen';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Route App One',),
      body: Container(
          margin: const EdgeInsets.all(14),
          child: Column(
            children: [
              DiplomaWidget(
                imagePath: 'assets/images/Android.jpeg',
                btnTitle: 'android diploma',
                onPressed: () {
                 Navigator.of(context).pushNamed(AndroidDiploma.route);
                },
              ),
              DiplomaWidget(
                imagePath: 'assets/images/IOS.jpeg',
                btnTitle: 'ios diploma',
                onPressed: () {
                  Navigator.of(context).pushNamed(IosDiploma.route);
                },
              ),
              DiplomaWidget(
                imagePath: 'assets/images/fullStack.jpeg',
                btnTitle: 'fullstack diploma',
                onPressed: () {
                  Navigator.of(context).pushNamed(FullstackDiploma.route);
                },
              ),
            ],
          )),
    );
  }
}
